#!/usr/bin/env python3
"""
Game History Report Generator  (v2)
===================================
Reads a game-history save file (command_storage.dat: gzip-compressed NBT) and
writes ONE self-contained, interactive HTML report (no internet needed):

  * Overview, outliers, charts, per-player pages, sortable/filterable game
    explorer with drill-down, side-by-side game comparison, bot analysis,
    and a data-quality section.

Usage
-----
  python game_report.py saves/            (every .dat in a folder)
  python game_report.py "saves/*.dat" old.dat
  python game_report.py command_storage.dat
  python game_report.py a.dat b.dat -o report.html --csv exports/
  python game_report.py --help

Requires Python 3.8+. Charts need matplotlib (pip install matplotlib); without
it the report is still produced, just without images.
"""
import argparse, base64, glob, gzip, html, io, json, os, statistics as st, struct, sys, zlib
from collections import Counter, defaultdict
from datetime import datetime

__version__ = "5.0"
TEAM_COL = {"red": "#d9534f", "blue": "#357edd"}
PALETTE = ["#4c78a8", "#f58518", "#54a24b", "#e45756", "#b279a2", "#9d755d", "#72b7b2", "#eeca3b"]
GREY = "#888888"
STAT_KEYS = ("player_kills", "deaths", "assists", "shots_fired", "shots_hit", "headshots", "ults_used", "damage_dealt", "damage_taken", "healing_dealt",
             "healing_received", "object_kills", "play_time")


GUARDIAN, SUSTAINER, STRIKER = "Guardian (tank)", "Sustainer (heal/support)", "Striker (DPS)"
ROLES = (STRIKER, GUARDIAN, SUSTAINER)
ROLE_COL = {STRIKER: "#e45756", GUARDIAN: "#4c78a8", SUSTAINER: "#54a24b", "Unknown": GREY}
# class id -> (name, role).  Override/extend with --class-names file.
DEFAULT_CLASSES = {
    "1": ("Scout", STRIKER), "2": ("Soldier", STRIKER), "3": ("Sniper", STRIKER), "4": ("Bomber", STRIKER),
    "5": ("Gunner", GUARDIAN), "6": ("Healer", SUSTAINER), "7": ("Brawler", GUARDIAN), "8": ("Mobility", STRIKER),
    "9": ("Mechanic", GUARDIAN), "10": ("Scientist", SUSTAINER), "11": ("Infiltraitor", STRIKER), "12": ("Pyro", GUARDIAN),
    "13": ("Seeker", STRIKER), "14": ("Shocksmith", SUSTAINER), "15": ("Rocketeer", GUARDIAN),
}


def load_class_info(path=None):
    """Built-in classes, optionally overridden by a JSON file: {"2": "Soldier"} or {"2": {"name": "Soldier", "role": "striker"}}."""
    info = dict(DEFAULT_CLASSES)
    if path:
        try:
            with open(path, encoding="utf-8") as fh:
                data = json.load(fh)
            if not isinstance(data, dict): raise ValueError("expected a JSON object")
            for k, v in data.items():
                old = info.get(str(k), ("Class %s" % k, "Unknown"))
                if isinstance(v, dict):
                    role = str(v.get("role", old[1])).lower()
                    role = next((r for r in ROLES if r.lower().startswith(role[:4])), old[1] if not v.get("role") else str(v["role"]))
                    info[str(k)] = (str(v.get("name", old[0])), role)
                else:
                    info[str(k)] = (str(v), old[1])
        except (OSError, ValueError) as e:
            raise ReportError("Could not read class-names file: %s" % e)
    return info


END_LABEL = {"team_elim": "Team eliminated", "force_ended": "Force-ended", "all_points_capped": "All points captured",
             "points_met": "Goal points reached", "payload_captured": "Payload captured", "time_up": "Time up",
             "out_of_time": "Out of time"}


def end_label(w):
    return END_LABEL.get(w, str(w).replace("_", " ").capitalize()) if w else "Unknown"


def world_key(wid):
    """world_id is stored as 4 signed ints; return a tuple, or None if absent/odd."""
    if isinstance(wid, list) and wid and all(isinstance(x, int) and not isinstance(x, bool) for x in wid):
        return tuple(wid)
    return None


def world_hex(key):
    return "".join("%08x" % (x & 0xFFFFFFFF) for x in key) if key else ""


def version_str(v):
    """[{"": "Alpha"}, {"": 4}] -> 'Alpha 4'."""
    parts = []
    for x in (v if isinstance(v, list) else []):
        parts.append(str(next(iter(x.values()))) if isinstance(x, dict) and x else str(x))
    return " ".join(parts) or "unknown"


class ReportError(Exception):
    """A problem the user can understand and fix (bad file, etc.)."""


# =============================================================== NBT reading
def parse_nbt(d):
    """Minimal big-endian NBT reader (all standard tag types)."""
    pos = [0]
    n_total = len(d)

    def take(n):
        if n < 0 or pos[0] + n > n_total:
            raise ReportError("The file looks truncated or damaged (unexpected end of data).")
        b = d[pos[0]:pos[0] + n]
        pos[0] += n
        return b

    def num(fmt, size):
        return struct.unpack(">" + fmt, take(size))[0]

    def text():
        return take(num("H", 2)).decode("utf8", "replace")

    def payload(t, depth):
        if depth > 64:
            raise ReportError("The file is nested too deeply to be a valid save.")
        if t == 1: return num("b", 1)
        if t == 2: return num("h", 2)
        if t == 3: return num("i", 4)
        if t == 4: return num("q", 8)
        if t == 5: return num("f", 4)
        if t == 6: return num("d", 8)
        if t == 7: return list(take(num("i", 4)))
        if t == 8: return text()
        if t == 9:
            et = num("B", 1)
            cnt = num("i", 4)
            if cnt < 0 or (cnt and et == 0):
                raise ReportError("Corrupt list in file.")
            return [payload(et, depth + 1) for _ in range(cnt)]
        if t == 10:
            o = {}
            while True:
                tt = num("B", 1)
                if tt == 0:
                    return o
                k = text()
                o[k] = payload(tt, depth + 1)
        if t == 11: return [num("i", 4) for _ in range(num("i", 4))]
        if t == 12: return [num("q", 8) for _ in range(num("i", 4))]
        raise ReportError("Unrecognised data (tag %d). Is this really a game save file?" % t)

    try:
        t = num("B", 1)
        if t != 10:
            raise ReportError("This does not look like a game save file (wrong header).")
        text()
        return payload(t, 0)
    except struct.error:
        raise ReportError("The file looks truncated or damaged.")
    except RecursionError:
        raise ReportError("The file is nested too deeply to be a valid save.")


def read_file(path):
    if not os.path.isfile(path):
        raise ReportError("File not found: %s" % path)
    try:
        with open(path, "rb") as fh:
            raw = fh.read()
    except OSError as e:
        raise ReportError("Cannot read %s: %s" % (path, e.strerror or e))
    if not raw:
        raise ReportError("%s is empty." % path)
    if raw[:2] == b"\x1f\x8b":
        try:
            raw = gzip.decompress(raw)
        except (OSError, EOFError, zlib.error):
            raise ReportError("%s is damaged (could not decompress)." % path)
    return parse_nbt(raw)


def expand_inputs(paths):
    """Accept files, folders (every *.dat inside, name order) and wildcards (needed on Windows)."""
    out, seen = [], set()
    for p in paths:
        p = os.path.expanduser(p)
        if os.path.isdir(p):
            found = sorted(glob.glob(os.path.join(p, "*.dat")))
            if not found:
                raise ReportError("No .dat files found in folder: %s" % p)
        elif any(c in p for c in "*?["):
            found = sorted(glob.glob(p))
            if not found:
                raise ReportError("No files match: %s" % p)
        else:
            found = [p]
        for f in found:
            k = os.path.abspath(f)
            if k not in seen:
                seen.add(k); out.append(f)
    return out


def find_current(node):
    """The game that was running when the file was saved (not finished), if recorded."""
    try:
        c = node["data"]["contents"]["current"]["game"]
        return c if isinstance(c, dict) else None
    except (KeyError, TypeError):
        return None


def find_games(node):
    """Locate the list of game records anywhere in the tree (prefers data.contents.games.games)."""
    try:
        g = node["data"]["contents"]["games"]["games"]
        if isinstance(g, list):
            return g
    except (KeyError, TypeError):
        pass

    def looks(lst):
        return isinstance(lst, list) and lst and all(isinstance(x, dict) for x in lst) and \
            any(k in x for x in lst for k in ("bots", "players", "winner", "length"))

    stack = [node]
    while stack:
        cur = stack.pop()
        if isinstance(cur, dict):
            for k, v in cur.items():
                if k == "games" and looks(v):
                    return v
                stack.append(v)
        elif isinstance(cur, list):
            stack.extend(x for x in cur if isinstance(x, (dict, list)))
    return []


# ============================================================= small helpers
esc = lambda s: html.escape(str(s), quote=True)


def avg(x):
    x = list(x)
    return sum(x) / len(x) if x else 0.0


def med(x):
    x = list(x)
    return st.median(x) if x else 0.0


def fmt_time(sec):
    sec = int(round(max(0, sec)))
    h, m, s = sec // 3600, sec % 3600 // 60, sec % 60
    return "%d:%02d:%02d" % (h, m, s) if h else "%d:%02d" % (m, s)


def num_or(v, default=0):
    return v if isinstance(v, (int, float)) and not isinstance(v, bool) else default


def team_color(t):
    return TEAM_COL.get(t, GREY)


def outliers(vals, labels, min_n=5):
    """Flag unusual values. Returns [(label, value, z, 'high'|'low')].
    Flags if |z|>=2, or (outside 1.5*IQR fences or robust-z>3.5) and |z|>=1."""
    n = len(vals)
    if n < min_n:
        return []
    m, sd = st.mean(vals), st.pstdev(vals)
    if sd == 0:
        return []
    q = st.quantiles(vals, n=4)
    iqr = q[2] - q[0]
    lo, hi = q[0] - 1.5 * iqr, q[2] + 1.5 * iqr
    md = st.median(vals)
    mad = st.median([abs(v - md) for v in vals])
    out = []
    for l, v in zip(labels, vals):
        z = (v - m) / sd
        rz = 0.6745 * (v - md) / mad if mad else 0
        fence = v > hi or v < lo or abs(rz) > 3.5
        if abs(z) >= 2.0 or (fence and abs(z) >= 1.0):
            out.append((l, v, z, "high" if v > m else "low"))
    return out


# ================================================================ data model
def normalise(games, tps, class_names, notes, sources=None):
    """Turn raw records into clean game dicts + per-player-game rows. Never raises on odd data."""
    G, PG = [], []
    seen = {}
    server_idx = {}
    botsonly = []
    multi_server = len({world_key(g.get("world_id")) for g in games if isinstance(g, dict) and world_key(g.get("world_id")) is not None}) > 1

    def cinfo(cid):
        return class_names.get(str(cid), ("Class %s" % cid, "Unknown"))
    for i, g in enumerate(games, 1):
        if not isinstance(g, dict):
            notes.append("Game %d skipped: not a valid record." % i)
            continue
        key = json.dumps(g, sort_keys=True, default=str)
        if key in seen:
            notes.append("Game %d is an exact duplicate of game %d." % (i, seen[key]))
        seen.setdefault(key, i)
        mp = g.get("map") if isinstance(g.get("map"), dict) else {}
        gm = g.get("gamemode") if isinstance(g.get("gamemode"), dict) else {}
        wk = world_key(g.get("world_id"))
        gid = g.get("game_id") if isinstance(g.get("game_id"), int) and not isinstance(g.get("game_id"), bool) else None
        if wk is not None and wk not in server_idx:
            server_idx[wk] = len(server_idx) + 1
        label = ("%s#%d" % (("S%d" % server_idx[wk]) if multi_server and wk is not None else "", gid)) if gid is not None else "G%d" % i
        ticks = num_or(g.get("length"), 0)
        if ticks <= 0:
            notes.append("Game %s has no recorded length." % label)
        winner = g.get("winner") if isinstance(g.get("winner"), str) and g.get("winner") else "unknown"
        bots, players = [], []
        bd = g.get("bots") if isinstance(g.get("bots"), dict) else {}
        for team, lst in bd.items():
            for b in (lst if isinstance(lst, list) else []):
                if isinstance(b, dict):
                    # The game stores class_history newest-first (oldest class last); reverse it so hist runs oldest -> newest.
                    hist = [c for c in (b.get("class_history") if isinstance(b.get("class_history"), list) else []) if isinstance(c, int)][::-1]
                    fin = cinfo(hist[-1]) if hist else None
                    bots.append(dict(team=team, name=str(b.get("name", "?")), id=b.get("id"),
                                     skill=num_or(b.get("skill")), aggression=num_or(b.get("aggression")),
                                     cooperativeness=num_or(b.get("cooperativeness")),
                                     hist=hist, hist_names=[cinfo(c)[0] for c in hist], hist_roles=[cinfo(c)[1] for c in hist], swaps=max(0, len(hist) - 1),
                                     final=fin[0] if fin else None, role=fin[1] if fin else None,
                                     raw_stat=({k: num_or(b["stat"].get(k)) for k in STAT_KEYS} if isinstance(b.get("stat"), dict) else None)))
        pd_ = g.get("players") if isinstance(g.get("players"), dict) else {}
        for team, lst in pd_.items():
            for p in (lst if isinstance(lst, list) else []):
                if isinstance(p, dict):
                    s = p.get("stat") if isinstance(p.get("stat"), dict) else None
                    players.append(dict(team=team, name=str(p.get("name", "?")), cls=p.get("class"),
                                        has_stats=s is not None,
                                        stat={k: num_or((s or {}).get(k)) for k in STAT_KEYS}))
        teams = sorted(set(list(bd.keys()) + list(pd_.keys()) + ([winner] if winner != "unknown" else [])),
                       key=lambda t: (t not in TEAM_COL, t))
        comp = {t: Counter([b["role"] for b in bots if b["team"] == t and b["role"]] +
                           [cinfo(p["cls"])[1] for p in players if p["team"] == t and p["cls"] is not None]) for t in teams}
        ws = g.get("win_state") if isinstance(g.get("win_state"), str) and g.get("win_state") else ""
        r = dict(source=(sources[i - 1] if sources else ""), n=i, gid=gid, world=wk, server=("S%d" % server_idx[wk]) if wk is not None else "",
                 world_hex=world_hex(wk), win_state=ws, end_label=end_label(ws), version=version_str(g.get("version")), comp=comp, map=str(mp.get("name", "unknown")), mode=str(gm.get("name", "unknown")), winner=winner,
                 ticks=ticks, secs=ticks / tps, bots=bots, players=players, teams=teams, gm=gm, mp=mp,
                 label=label, nbots=len(bots))
        for t in teams:
            tb = [b for b in bots if b["team"] == t]
            r["%s_bots" % t] = len(tb)
            for a in ("skill", "aggression", "cooperativeness"):
                r["%s_%s" % (t, a)] = avg(b[a] for b in tb)
        bgs = []
        for b in bots:
            sx = b.pop("raw_stat", None)
            if sx is None:
                continue
            mins = max(sx["play_time"] / tps / 60, 1e-9)
            k_, d_, a_ = sx["player_kills"], sx["deaths"], sx["assists"]
            sh, hi, hs = sx["shots_fired"], sx["shots_hit"], sx["headshots"]
            bg = dict(game=r, n=i, label=label, name=b["name"], id=b["id"], team=b["team"],
                      won=None if winner == "unknown" else b["team"] == winner,
                      skill=b["skill"], aggression=b["aggression"], cooperativeness=b["cooperativeness"],
                      cls=b["final"] or "Unknown", role=b["role"] or "Unknown", swaps=b["swaps"], named=not b["name"].startswith("CPU_"),
                      kills=k_, deaths=d_, assists=a_, dmg=sx["damage_dealt"], taken=sx["damage_taken"], heal=sx["healing_dealt"],
                      healr=sx["healing_received"], objk=sx["object_kills"], shots=sh, hits=hi, hs=hs, ults=sx["ults_used"],
                      played=sx["play_time"] / tps, part=(sx["play_time"] / ticks if ticks > 0 else 0),
                      kd=k_ / max(1, d_), kda=(k_ + a_) / max(1, d_), kpm=k_ / mins, dpm=sx["damage_dealt"] / mins,
                      dtpm=sx["damage_taken"] / mins, hpm=sx["healing_dealt"] / mins, apm=a_ / mins, dthpm=d_ / mins,
                      acc=(hi / sh if sh > 0 else None), hsr=(hs / hi if hi > 0 else None), ult10=sx["ults_used"] / mins * 10,
                      dph=(sx["damage_dealt"] / hi if hi > 0 else None))
            b["bg"] = bg
            bgs.append(bg)
        r["bgs"] = bgs
        if not players:
            botsonly.append(label)
        G.append(r)
        for p in players:
            if not p["has_stats"]:
                notes.append("Game %s: player %s has no stats recorded." % (label, p["name"]))
                continue
            s = p["stat"]
            mins = max(s["play_time"] / tps / 60, 1e-9)
            own = [b for b in bots if b["team"] == p["team"]]
            opp = [b for b in bots if b["team"] != p["team"]]
            pg = dict(game=r, n=i, name=p["name"], team=p["team"],
                      won=None if winner == "unknown" else p["team"] == winner,
                      label=label, kills=s["player_kills"], deaths=s["deaths"], assists=s["assists"],
                      kda=(s["player_kills"] + s["assists"]) / max(1, s["deaths"]), apm=s["assists"] / mins, dmg=s["damage_dealt"], taken=s["damage_taken"],
                      heal=s["healing_dealt"], healr=s["healing_received"], objk=s["object_kills"],
                      kd=s["player_kills"] / max(1, s["deaths"]), kpm=s["player_kills"] / mins,
                      dpm=s["damage_dealt"] / mins, dmg_ratio=s["damage_dealt"] / max(1, s["damage_taken"]),
                      played=s["play_time"] / tps, part=(s["play_time"] / ticks if ticks > 0 else 0),
                      cls=p["cls"], clsname=cinfo(p["cls"])[0], role=cinfo(p["cls"])[1],
                      own_skill=avg(b["skill"] for b in own), opp_skill=avg(b["skill"] for b in opp))
            PG.append(pg)
            r.setdefault("pgs", []).append(pg)
    for r in G:
        r.setdefault("pgs", [])
    if botsonly:
        notes.append("%d game(s) have no player records (bots only): %s." % (len(botsonly), ", ".join(botsonly[:40]) + (" …" if len(botsonly) > 40 else "")))
    return G, PG


def player_summary(name, rows):
    rows = sorted(rows, key=lambda x: x["n"])
    decided = [r for r in rows if r["won"] is not None]
    wins = sum(1 for r in decided if r["won"])
    k, d = sum(r["kills"] for r in rows), sum(r["deaths"] for r in rows)
    streak = {True: 0, False: 0}
    cur = {True: 0, False: 0}
    for r in decided:
        for v in (True, False):
            cur[v] = cur[v] + 1 if r["won"] == v else 0
            streak[v] = max(streak[v], cur[v])
    maps = defaultdict(list)
    for r in rows:
        maps[r["game"]["map"]].append(r)
    modes = defaultdict(list)
    for r in rows:
        modes[r["game"]["mode"]].append(r)
    return dict(name=name, rows=rows, games=len(rows), wins=wins, losses=len(decided) - wins,
                winrate=(100 * wins / len(decided)) if decided else None, kills=k, deaths=d,
                kd=k / max(1, d), avg_kd=avg(r["kd"] for r in rows), assists=sum(r["assists"] for r in rows),
                dmg=sum(r["dmg"] for r in rows), taken=sum(r["taken"] for r in rows),
                heal=sum(r["heal"] for r in rows), objk=sum(r["objk"] for r in rows),
                played=sum(r["played"] for r in rows),
                dpm=avg(r["dpm"] for r in rows), kpm=avg(r["kpm"] for r in rows),
                best=max(rows, key=lambda r: (r["kd"], r["kills"])), worst=min(rows, key=lambda r: (r["kd"], r["kills"])),
                win_streak=streak[True], loss_streak=streak[False], maps=maps, modes=modes,
                classes=Counter(r["clsname"] for r in rows), roles=Counter(r["role"] for r in rows))


# ====================================================================== charts
try:
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    HAVE_MPL = True
except Exception:  # pragma: no cover
    HAVE_MPL = False


def fig_uri(fig):
    b = io.BytesIO()
    fig.savefig(b, format="png", dpi=100, bbox_inches="tight")
    plt.close(fig)
    return "data:image/png;base64," + base64.b64encode(b.getvalue()).decode()


class Charts:
    """Collects charts; a failing chart is skipped (and noted) rather than crashing the report."""
    def __init__(self, enabled, notes):
        self.enabled = enabled and HAVE_MPL
        self.notes = notes
        if enabled and not HAVE_MPL:
            notes.append("matplotlib is not installed, so charts were skipped (pip install matplotlib).")

    def make(self, title, fn):
        if not self.enabled:
            return ""
        try:
            fig = fn()
            if fig is None:
                return ""
            return "<figure><figcaption>%s</figcaption><img alt='%s' src='%s'></figure>" % (esc(title), esc(title), fig_uri(fig))
        except Exception as e:  # keep going
            plt.close("all")
            self.notes.append("Chart '%s' could not be drawn (%s)." % (title, e))
            return ""


def _scatter_labels(ax, pts):
    for x, y, t in pts:
        ax.annotate(t, (x, y), fontsize=7, xytext=(3, 3), textcoords="offset points")


def chart_length(G):
    fig, ax = plt.subplots(figsize=(10, 3.6))
    m = [r["secs"] / 60 for r in G]
    ax.bar([r["label"] for r in G], m, color=[team_color(r["winner"]) for r in G])
    ax.axhline(med(m), color="k", ls="--", lw=1, label="median %.1f min" % med(m))
    ax.set_ylabel("Minutes"); ax.set_title("Game length (bar colour = winning team)")
    ax.tick_params(axis="x", rotation=60, labelsize=7); ax.legend()
    return fig


def chart_overview(G):
    fig, axs = plt.subplots(1, 3, figsize=(11, 3.4))
    wc = Counter(r["winner"] for r in G)
    ks = list(wc)
    axs[0].pie([wc[k] for k in ks], labels=ks, colors=[team_color(k) for k in ks], autopct="%d%%", startangle=90)
    axs[0].set_title("Winning team")
    for ax, key, t in ((axs[1], "map", "Games per map"), (axs[2], "mode", "Games per mode")):
        c = Counter(r[key] for r in G).most_common()
        ax.barh([k for k, _ in c][::-1], [v for _, v in c][::-1], color="#5b8c85"); ax.set_title(t)
    fig.tight_layout()
    return fig


def chart_length_groups(G):
    fig, axs = plt.subplots(1, 2, figsize=(11, 3.6))
    for ax, key in zip(axs, ("mode", "map")):
        grp = defaultdict(list)
        for r in G: grp[r[key]].append(r["secs"] / 60)
        ks = sorted(grp)
        ax.boxplot([grp[k] for k in ks], showmeans=True)
        ax.set_xticks(range(1, len(ks) + 1)); ax.set_xticklabels(ks, rotation=30)
        for j, k in enumerate(ks, 1): ax.scatter([j] * len(grp[k]), grp[k], color=GREY, s=12, zorder=3)
        ax.set_title("Game length by %s" % key); ax.set_ylabel("Minutes")
    fig.tight_layout()
    return fig


def chart_bot_makeup(G):
    fig, axs = plt.subplots(1, 3, figsize=(12, 3.4))
    teams = [t for t in ("red", "blue") if any(("%s_bots" % t) in r for r in G)]
    for ax, a in zip(axs, ("skill", "aggression", "cooperativeness")):
        for t in teams:
            ax.plot([r["label"] for r in G], [r.get("%s_%s" % (t, a), 0) for r in G], "o-", color=team_color(t), label=t)
        ax.set_title("Avg bot %s" % a); ax.tick_params(axis="x", rotation=60, labelsize=6)
    axs[0].legend(); fig.tight_layout()
    return fig


def chart_skill_vs_win(G):
    pts = [r for r in G if "red_skill" in r and "blue_skill" in r and r["winner"] in ("red", "blue")
           and r["red_bots"] and r["blue_bots"]]
    if len(pts) < 2: return None
    fig, ax = plt.subplots(figsize=(9, 3.6))
    pts.sort(key=lambda r: r["red_skill"] - r["blue_skill"])
    ax.bar([r["label"] for r in pts], [r["red_skill"] - r["blue_skill"] for r in pts],
           color=[team_color(r["winner"]) for r in pts])
    ax.axhline(0, color="k", lw=.8)
    ax.set_title("Red minus Blue avg bot skill (bar colour = actual winner)"); ax.tick_params(axis="x", rotation=60, labelsize=7)
    return fig


def chart_players_compare(S):
    fig, axs = plt.subplots(1, 4, figsize=(13, 3.4))
    names = [s["name"] for s in S]
    cols = [PALETTE[i % len(PALETTE)] for i in range(len(S))]
    for ax, (t, vals) in zip(axs, (("Games", [s["games"] for s in S]),
                                   ("Win rate %", [s["winrate"] or 0 for s in S]),
                                   ("Overall K/D", [s["kd"] for s in S]),
                                   ("Avg damage / min", [s["dpm"] for s in S]))):
        ax.bar(names, vals, color=cols); ax.set_title(t); ax.tick_params(axis="x", rotation=30)
    fig.tight_layout()
    return fig


def chart_player_trend(s):
    rows = s["rows"]
    if len(rows) < 2: return None
    x = [r["label"] if "label" in r else r["label"] for r in rows]
    fig, axs = plt.subplots(1, 2, figsize=(11, 3.6))
    w = 0.4; idx = range(len(rows))
    axs[0].bar([i - w / 2 for i in idx], [r["kills"] for r in rows], w, color="#2e9e5b", label="Kills")
    axs[0].bar([i + w / 2 for i in idx], [r["deaths"] for r in rows], w, color="#c0392b", label="Deaths")
    axs[0].set_xticks(list(idx)); axs[0].set_xticklabels(x, rotation=60, fontsize=7); axs[0].legend(); axs[0].set_title("Kills / deaths per game")
    kd = [r["kd"] for r in rows]
    axs[1].plot(list(idx), kd, "o-", color="#4c78a8", label="K/D")
    for i, r in zip(idx, rows):
        if r["won"] is not None:
            axs[1].scatter([i], [kd[i]], s=90, color="#2e9e5b" if r["won"] else "#c0392b", zorder=3)
    if len(kd) >= 3:
        roll = [avg(kd[max(0, i - 2):i + 1]) for i in idx]
        axs[1].plot(list(idx), roll, "--", color="k", lw=1, label="3-game avg")
    axs[1].axhline(1, color=GREY, lw=.8); axs[1].set_xticks(list(idx)); axs[1].set_xticklabels(x, rotation=60, fontsize=7)
    axs[1].set_title("K/D trend (green dot = win, red = loss)"); axs[1].legend()
    fig.tight_layout()
    return fig


def chart_player_groups(s):
    fig, axs = plt.subplots(1, 3, figsize=(12, 3.4))
    items = [("Map", s["maps"]), ("Mode", s["modes"])]
    for ax, (t, grp) in zip(axs, items):
        ks = sorted(grp)
        ax.bar(ks, [avg(r["kd"] for r in grp[k]) for k in ks], color="#5b8c85")
        for i, k in enumerate(ks):
            ax.text(i, 0, "n=%d" % len(grp[k]), ha="center", va="bottom", fontsize=7)
        ax.axhline(1, color=GREY, lw=.8); ax.set_title("Avg K/D by %s" % t.lower()); ax.tick_params(axis="x", rotation=30)
    c = s["classes"].most_common()
    axs[2].barh([k for k, _ in c][::-1], [v for _, v in c][::-1], color="#b279a2"); axs[2].set_title("Classes played")
    fig.tight_layout()
    return fig


def chart_player_scatter(s):
    rows = s["rows"]
    if len(rows) < 3: return None
    fig, axs = plt.subplots(1, 2, figsize=(11, 3.8))
    for r in rows:
        c = GREY if r["won"] is None else ("#2e9e5b" if r["won"] else "#c0392b")
        axs[0].scatter(r["own_skill"] - r["opp_skill"], r["kd"], s=60, color=c)
        axs[1].scatter(r["played"] / 60, r["kills"], s=60, color=c)
    _scatter_labels(axs[0], [(r["own_skill"] - r["opp_skill"], r["kd"], r["label"]) for r in rows])
    _scatter_labels(axs[1], [(r["played"] / 60, r["kills"], r["label"]) for r in rows])
    axs[0].axvline(0, color=GREY, lw=.8); axs[0].set_xlabel("Own bots' avg skill minus opponents'"); axs[0].set_ylabel("K/D")
    axs[0].set_title("Bot skill balance vs K/D")
    axs[1].set_xlabel("Minutes played"); axs[1].set_ylabel("Kills"); axs[1].set_title("Time played vs kills")
    fig.tight_layout()
    return fig


HEAT_KEYS = [("kills", "Kills"), ("deaths", "Deaths"), ("assists", "Assists"), ("kd", "K/D"), ("dmg", "Dmg dealt"), ("taken", "Dmg taken"),
             ("heal", "Healing"), ("objk", "Obj kills"), ("played", "Secs played")]


def chart_heat(rows, title):
    if len(rows) < 3: return None
    import numpy as np
    M = np.array([[r[k] for k, _ in HEAT_KEYS] for r in rows], float)
    sd = M.std(0); sd[sd == 0] = 1
    Z = (M - M.mean(0)) / sd
    fig, ax = plt.subplots(figsize=(9, 0.42 * len(rows) + 1.8))
    im = ax.imshow(Z, cmap="coolwarm", vmin=-2.5, vmax=2.5, aspect="auto")
    ax.set_xticks(range(len(HEAT_KEYS))); ax.set_xticklabels([n for _, n in HEAT_KEYS], rotation=30)
    ax.set_yticks(range(len(rows))); ax.set_yticklabels(["%s %s" % (r["label"], r["name"]) for r in rows], fontsize=8)
    for i in range(Z.shape[0]):
        for j in range(Z.shape[1]):
            ax.text(j, i, "%.1f" % M[i, j] if HEAT_KEYS[j][0] == "kd" else "%.0f" % M[i, j], ha="center", va="center", fontsize=7)
    fig.colorbar(im, label="Std. deviations from average"); ax.set_title(title)
    return fig


def chart_bot_scatter(botrows):
    if len(botrows) < 3: return None
    fig, axs = plt.subplots(1, 2, figsize=(11, 3.6))
    for ax, a in zip(axs, ("skill", "aggression")):
        ax.scatter([b[a] for b in botrows], [b["winrate"] for b in botrows], s=[30 + 10 * b["games"] for b in botrows], alpha=.6, color="#4c78a8")
        ax.set_xlabel("Bot " + a); ax.set_ylabel("Win rate % when on the field"); ax.set_title("Bot %s vs win rate (size = games)" % a)
    fig.tight_layout()
    return fig


# ================================================================ HTML pieces
def table(headers, rows, cls="", sortable=True):
    """rows: list of lists; cell = html string or (html, sortkey). headers: str or (str, 'l')."""
    h = ["<table class='%s%s'><thead><tr>" % ("sortable " if sortable else "", cls)]
    for x in headers:
        t, a = (x if isinstance(x, tuple) else (x, ""))
        h.append("<th class='%s'>%s</th>" % (a, t))
    h.append("</tr></thead><tbody>")
    for row in rows:
        h.append("<tr>")
        for c, hd in zip(row, headers):
            a = hd[1] if isinstance(hd, tuple) else ""
            if isinstance(c, tuple):
                h.append("<td class='%s' data-s='%s'>%s</td>" % (a, esc(c[1]), c[0]))
            else:
                h.append("<td class='%s'>%s</td>" % (a, c))
        h.append("</tr>")
    h.append("</tbody></table>")
    return "".join(h)


def badge(won):
    if won is None: return "<span class='muted'>?</span>"
    return "<span class='win'>W</span>" if won else "<span class='loss'>L</span>"


def tspan(t):
    return "<span style='color:%s;font-weight:600'>%s</span>" % (team_color(t), esc(t))


def kpi(label, value, sub=""):
    return "<div class='kpi'><div class='kv'>%s</div><div class='kl'>%s</div><div class='ks'>%s</div></div>" % (value, esc(label), sub)


def fmt_pct(v):
    return "–" if v is None else "%.0f%%" % v


def rank_note(val, allvals, higher_better=True):
    s = sorted(allvals, reverse=higher_better)
    return "<small class='muted'>#%d/%d</small>" % (s.index(val) + 1, len(s))


# ---------------------------------------------------------- findings/outliers
def build_findings(G, PG, S):
    f = []
    secs = [r["secs"] for r in G]
    wc = Counter(r["winner"] for r in G)
    f.append("%d games analysed; total game time %s (%.2f hours)." % (len(G), fmt_time(sum(secs)), sum(secs) / 3600))
    f.append("Winners: " + ", ".join("%s %d" % (k, v) for k, v in wc.most_common()) + ".")
    if secs:
        f.append("Game length: median %s, mean %s, shortest %s (%s), longest %s (%s)." % (
            fmt_time(med(secs)), fmt_time(avg(secs)), fmt_time(min(secs)), G[secs.index(min(secs))]["label"],
            fmt_time(max(secs)), G[secs.index(max(secs))]["label"]))
    if S:
        f.append("%d player(s) with recorded stats: %s." % (len(S), ", ".join("%s (%d game%s)" % (s["name"], s["games"], "" if s["games"] == 1 else "s") for s in S)))
        top = max(S, key=lambda s: s["kd"])
        f.append("Highest overall K/D: %s at %.2f. Best win rate: %s." % (top["name"], top["kd"], max(
            ((s["name"], s["winrate"]) for s in S if s["winrate"] is not None), key=lambda x: x[1], default=("n/a", 0))[0]))
    dec = [r for r in G if r["winner"] in ("red", "blue") and r["red_bots"] and r["blue_bots"]] if all("red_bots" in r and "blue_bots" in r for r in G) else []
    if dec:
        hw = [r for r in dec if (r["red_skill"] - r["blue_skill"]) * (1 if r["winner"] == "red" else -1) > 0]
        eq = [r for r in dec if r["red_skill"] == r["blue_skill"]]
        f.append("The team with the higher average bot skill won %d of %d games (%d had equal skill)." % (len(hw), len(dec), len(eq)))
    fe = [r for r in G if r["win_state"] == "force_ended"]
    if fe:
        f.append("%d of %d games (%.0f%%) were force-ended (%s). Their winners and lengths may not reflect a natural finish; filter them with 'Ended by' in the Game explorer or use --exclude-force-ended." % (
            len(fe), len(G), 100 * len(fe) / len(G), ", ".join("%s %d" % (k, v) for k, v in Counter(r["mode"] for r in fe).most_common())))
    rr = role_rows(PG)
    if len(rr) > 1:
        top = max(rr, key=lambda r: r["score"])
        f.append("Roles played: " + ", ".join("%s %d" % (r["role"].split(" ")[0], r["n"]) for r in rr) + ". Highest avg performance score: %s (%.0f)." % (top["role"].split(" ")[0], top["score"]))
    for s in S:
        good = [(avg(r["kd"] for r in v), k, len(v)) for k, v in s["maps"].items() if len(v) >= 2]
        if len(good) >= 2:
            b, w = max(good), min(good)
            f.append("%s: best map by K/D is %s (%.2f over %d games), weakest is %s (%.2f over %d)." % (s["name"], b[1], b[0], b[2], w[1], w[0], w[2]))
    return f


def collect_outliers(G, PG, S):
    out = []
    if len(G) >= 5:
        for o in outliers([r["secs"] / 60 for r in G], G):
            out.append(("All games", "Game length (min)", o[0], None, o[1], o[2], o[3]))
    mets = (("kills", "Kills"), ("deaths", "Deaths"), ("kd", "K/D"), ("dmg", "Damage dealt"), ("taken", "Damage taken"),
            ("dpm", "Damage / min"), ("kpm", "Kills / min"), ("heal", "Healing dealt"), ("objk", "Object kills"))
    for s in S:
        rows = s["rows"]
        for k, nm in mets:
            for o in outliers([r[k] for r in rows], rows):
                out.append((s["name"] + " (vs own average)", nm, o[0]["game"], s["name"], o[1], o[2], o[3]))
    if len(S) > 1:
        for k, nm in mets:
            for o in outliers([r[k] for r in PG], PG):
                out.append(("Everyone", nm, o[0]["game"], o[0]["name"], o[1], o[2], o[3]))
    return out


# ------------------------------------------------------------ game explorer
def game_metrics(r):
    """Flat label->value mapping used by the compare tool."""
    m = {"Game ID": r["gid"] if r["gid"] is not None else "–", "Server": r["server"] or "–", "Version": r["version"], "Ended by": r["end_label"],
         "Source file": r["source"], "Map": r["map"], "Mode": r["mode"], "Winner": r["winner"], "Length (min)": round(r["secs"] / 60, 2)}
    for t in r["teams"]:
        m["%s bots" % t] = r.get("%s_bots" % t, 0)
        for a in ("skill", "aggression", "cooperativeness"):
            m["%s avg bot %s" % (t, a)] = round(r.get("%s_%s" % (t, a), 0), 2)
    for t in r["teams"]:
        for role, c in sorted(r["comp"].get(t, {}).items()):
            m["%s %s count" % (t, role.split(" ")[0].lower())] = c
    for t in r["teams"]:
        tb = [b for b in r["bgs"] if b["team"] == t]
        if tb:
            m["%s bot kills (with stats)" % t] = sum(b["kills"] for b in tb)
            m["%s bot deaths (with stats)" % t] = sum(b["deaths"] for b in tb)
            m["%s bot damage dealt (with stats)" % t] = sum(b["dmg"] for b in tb)
            sh = sum(b["shots"] for b in tb)
            if sh: m["%s bot accuracy %% (with stats)" % t] = round(100 * sum(b["hits"] for b in tb) / sh, 1)
            m["%s bot ultimates used (with stats)" % t] = sum(b["ults"] for b in tb)
    for p in r["pgs"]:
        for k, nm in (("kills", "kills"), ("deaths", "deaths"), ("assists", "assists"), ("kd", "K/D"), ("dmg", "damage dealt"), ("taken", "damage taken"),
                      ("heal", "healing dealt"), ("objk", "object kills"), ("dpm", "damage/min"), ("score", "performance score")):
            m["%s %s" % (p["name"], nm)] = round(p[k], 2)
        m["%s team" % p["name"]] = p["team"]
        m["%s class" % p["name"]] = "%s (%s)" % (p["clsname"], p["role"])
    return m


def game_detail(r, G, PG, flags):
    h = ["<div class='detail'>"]
    secs_all = [x["secs"] for x in G]
    rank = sorted(secs_all, reverse=True).index(r["secs"]) + 1
    diff = (r["secs"] / med(secs_all) - 1) * 100 if med(secs_all) else 0
    h.append("<p><b>%s</b> on <b>%s</b> · winner %s · length <b>%s</b> (%+.0f%% vs median; #%d longest of %d)</p>" % (
        esc(r["mode"]), esc(r["map"]), tspan(r["winner"]), fmt_time(r["secs"]), diff, rank, len(G)) + " <a href='#game-%d'>🔗 link</a>" % r["n"] + (" <span class='muted'>from %s</span>" % esc(r["source"]) if r["source"] else ""))
    h.append("<p class='muted'>Ended by <b>%s</b>%s · game ID %s · server %s · version %s</p>" % (
        esc(r["end_label"]), " (stopped before a normal finish)" if r["win_state"] == "force_ended" else "",
        esc(r["gid"] if r["gid"] is not None else "–"), esc((r["server"] + " " + r["world_hex"][:8]) if r["server"] else "–"), esc(r["version"])))
    if flags:
        h.append("<p class='flag'>⚠ Unusual: " + "; ".join(esc(x) for x in flags) + "</p>")
    if r["pgs"]:
        rows = []
        for p in sorted(r["pgs"], key=lambda x: x["name"]):
            rows.append([esc(p["name"]), tspan(p["team"]), badge(p["won"]), "%s <small class='muted'>%s</small>" % (esc(p["clsname"]), esc(p["role"].split(" ")[0])), str(p["kills"]), str(p["deaths"]),
                         str(p["assists"]), "%.2f %s" % (p["kd"], rank_note(p["kd"], [x["kd"] for x in PG])),
                         "{:,} {}".format(p["dmg"], rank_note(p["dmg"], [x["dmg"] for x in PG])), "{:,}".format(p["taken"]),
                         "{:,}".format(p["heal"]), str(p["objk"]), "%.0f%%" % (p["part"] * 100), "%.0f" % p["score"]])
        h.append(table([("Player", "l"), ("Team", "l"), "Result", ("Class", "l"), "Kills", "Deaths", "Assists", "K/D (rank overall)", "Damage dealt (rank)",
                        "Damage taken", "Healing", "Obj kills", "Time in game", "Score"], rows, sortable=False))
    else:
        h.append("<p class='muted'>No player stats recorded for this game (bots only or missing).</p>")
    for t in r["teams"]:
        tb = [b for b in r["bots"] if b["team"] == t]
        if not tb: continue
        h.append("<h4>%s bots (%d) · avg skill %.1f · aggression %.1f · cooperativeness %.1f</h4>" % (
            tspan(t), len(tb), r["%s_skill" % t], r["%s_aggression" % t], r["%s_cooperativeness" % t]))
        has = any(b.get("bg") for b in tb)
        def stat_cells(b):
            g_ = b.get("bg")
            if not has: return []
            if not g_: return ["–"] * 8
            return [str(g_["kills"]), str(g_["deaths"]), str(g_["assists"]), "{:,}".format(g_["dmg"]), "{:,}".format(g_["heal"]),
                    "–" if g_["acc"] is None else "%.0f%%" % (100 * g_["acc"]), "–" if g_["hsr"] is None else "%.0f%%" % (100 * g_["hsr"]), str(g_["ults"])]
        h.append(table([("Bot", "l"), "ID", "Skill", "Aggression", "Cooperativeness", ("Class path (start → final)", "l"), ("Role", "l")] +
                       (["K", "D", "A", "Damage", "Healing", "Accuracy", "HS rate", "Ults"] if has else []),
                       [[esc(b["name"]), esc(b["id"]), "%g" % b["skill"], "%g" % b["aggression"], "%g" % b["cooperativeness"],
                         esc(" → ".join(b["hist_names"]) or "–"), esc((b["role"] or "–").split(" ")[0])] + stat_cells(b)
                        for b in sorted(tb, key=lambda b: -b["skill"])], sortable=False))
    settings = [(k, v) for k, v in r["gm"].items() if not isinstance(v, (list, dict))]
    if settings:
        h.append("<details><summary>Game mode settings</summary>" + table(
            [("Setting", "l"), ("Value", "l")], [[esc(k), esc(v)] for k, v in settings], sortable=False) + "</details>")
    h.append("</div>")
    return "".join(h)


def explorer(G, PG, flags_by_game, players, files=()):
    multi = len(files) > 1
    maps = sorted({r["map"] for r in G}); modes = sorted({r["mode"] for r in G})
    h = ["<div class='filters'>",
         "<label>Search <input id='f-q' placeholder='map, mode, player…'></label>",
         "<label>Player <select id='f-p'><option value=''>All</option>%s</select></label>" % "".join("<option>%s</option>" % esc(p) for p in players),
         "<label>Map <select id='f-m'><option value=''>All</option>%s</select></label>" % "".join("<option>%s</option>" % esc(m) for m in maps),
         ("<label>File <select id='f-s'><option value=''>All</option>%s</select></label>" % "".join("<option>%s</option>" % esc(f) for f in files)) if multi else "",
         "<label>Ended by <select id='f-e'><option value=''>All</option>%s</select></label>" % "".join("<option>%s</option>" % esc(e) for e in sorted({r["end_label"] for r in G})),
         ("<label>Server <select id='f-sv'><option value=''>All</option>%s</select></label>" % "".join("<option value='%s'>%s (%s)</option>" % (esc(x[0]), esc(x[0]), esc(x[1])) for x in sorted({(r["server"], r["world_hex"][:8]) for r in G if r["server"]}))) if len({r["server"] for r in G if r["server"]}) > 1 else "",
         ("<label>Version <select id='f-ver'><option value=''>All</option>%s</select></label>" % "".join("<option>%s</option>" % esc(v) for v in sorted({r["version"] for r in G}))) if len({r["version"] for r in G}) > 1 else "",
         "<label>Mode <select id='f-g'><option value=''>All</option>%s</select></label>" % "".join("<option>%s</option>" % esc(m) for m in modes),
         "<label>Result <select id='f-r'><option value=''>Any</option><option value='win'>Won</option><option value='loss'>Lost</option></select></label>",
         "<label>Winner <select id='f-w'><option value=''>Any</option><option>red</option><option>blue</option></select></label>",
         "<label>Min length (min) <input id='f-len' type='number' min='0' step='0.5' style='width:5em'></label>",
         "<label><input id='f-o' type='checkbox'> Only unusual games</label>",
         "<button id='f-x'>Reset</button> <button id='f-csv'>Download shown games (CSV)</button> <span id='f-count' class='muted'></span></div>",
         "<p class='muted'>Click a column heading to sort · click a game row to open its full breakdown.</p>"]
    heads = ["Game", ("Map", "l"), ("Mode", "l"), "Length", "Winner", ("Ended by", "l"), ("Players (result)", "l"), "Kills", "Bots R/B", "Skill R/B", "Flags"] + ([("Source", "l")] if multi else [])
    h.append("<table class='sortable ex'><thead><tr>" + "".join("<th class='%s'>%s</th>" % (x[1] if isinstance(x, tuple) else "", x[0] if isinstance(x, tuple) else x) for x in heads) + "</tr></thead><tbody>")
    for r in G:
        pl = " ".join("%s<small>%s</small>" % (badge(p["won"]), esc(p["name"])) for p in r["pgs"]) or "<span class='muted'>no stats</span>"
        res = " ".join("%s:%s" % (p["name"], "na" if p["won"] is None else ("win" if p["won"] else "loss")) for p in r["pgs"])
        fl = flags_by_game.get(r["n"], [])
        q = " ".join([r["label"], r["map"], r["mode"], r["winner"], r["end_label"], r["version"], r["server"]] + [p["name"] for p in r["pgs"]]).lower()
        h.append("<tr class='gr' data-n='%d' data-q='%s' data-players='%s' data-map='%s' data-mode='%s' data-res='%s' data-w='%s' data-len='%.3f' data-flag='%d' data-src='%s' data-end='%s' data-srv='%s' data-ver='%s'>" % (
            r["n"], esc(q), esc("|".join(p["name"] for p in r["pgs"])), esc(r["map"]), esc(r["mode"]), esc(res), esc(r["winner"]), r["secs"] / 60, 1 if fl else 0, esc(r["source"]), esc(r["end_label"]), esc(r["server"]), esc(r["version"])))
        sk = "/".join("%.1f" % r.get("%s_skill" % t, 0) for t in ("red", "blue"))
        h.append("<td data-s='%d'>%s</td><td class='l'>%s</td><td class='l'>%s</td><td data-s='%.1f'>%s</td><td>%s</td><td class='l'>%s</td><td class='l'>%s</td><td>%d</td><td>%s/%s</td><td>%s</td><td data-s='%d'>%s</td>" % (
            r["n"], esc(r["label"]), esc(r["map"]), esc(r["mode"]), r["secs"], fmt_time(r["secs"]), tspan(r["winner"]), esc(r["end_label"]), pl,
            sum(p["kills"] for p in r["pgs"]), r.get("red_bots", 0), r.get("blue_bots", 0), sk, len(fl), "⚠ %d" % len(fl) if fl else "") + ("<td class='l'>%s</td>" % esc(r["source"]) if multi else "") + "</tr>")
        h.append("<tr class='dr' data-for='%d' hidden><td colspan='13'>%s</td></tr>" % (r["n"], game_detail(r, G, PG, fl)))
    h.append("</tbody></table>")
    return "".join(h)


def compare_tab(G):
    opts = "".join("<option value='%d'>%s · %s · %s · %s</option>" % (r["n"], esc(r["label"]), esc(r["map"]), esc(r["mode"]), fmt_time(r["secs"])) for r in G)
    return ("<p>Pick two games to compare every recorded metric side by side.</p>"
            "<div class='filters'><label>Game A <select id='c-a'>%s</select></label><label>Game B <select id='c-b'>%s</select></label>"
            "<label><input type='checkbox' id='c-d'> Only differences</label></div><div id='c-out'></div>" % (opts, opts))


# ------------------------------------------------------------- players tab
def player_section(s, G, PG, ch, flags_by_pg):
    n = s["name"]
    h = ["<div class='psec' data-p='%s'>" % esc(n), "<h3>%s</h3>" % esc(n), "<div class='kpis'>"]
    h.append(kpi("Games", s["games"], "%.1f h played" % (s["played"] / 3600)))
    h.append(kpi("Record", "%d–%d" % (s["wins"], s["losses"]), "win rate %s" % fmt_pct(s["winrate"])))
    h.append(kpi("K/D (total)", "%.2f" % s["kd"], "%d kills / %d deaths" % (s["kills"], s["deaths"])))
    h.append(kpi("Avg damage/min", "%.0f" % s["dpm"], "%s dealt total" % "{:,}".format(s["dmg"])))
    h.append(kpi("Streaks", "%dW / %dL" % (s["win_streak"], s["loss_streak"]), "longest (file order)"))
    h.append(kpi("Best game", s["best"]["label"], "K/D %.2f · %s" % (s["best"]["kd"], esc(s["best"]["game"]["map"]))))
    if s["assists"]: h.append(kpi("Assists", s["assists"], "KDA %.2f" % ((s["kills"] + s["assists"]) / max(1, s["deaths"]))))
    h.append(kpi("Avg score", "%.0f" % avg(r["score"] for r in s["rows"]), "50 = typical"))
    h.append(kpi("Worst game", s["worst"]["label"], "K/D %.2f · %s" % (s["worst"]["kd"], esc(s["worst"]["game"]["map"]))))
    h.append("</div>")
    h.append(ch.make("%s – trend" % n, lambda: chart_player_trend(s)))
    h.append(ch.make("%s – by map, mode and class" % n, lambda: chart_player_groups(s)))
    h.append(ch.make("%s – balance and time" % n, lambda: chart_player_scatter(s)))
    h.append(ch.make("%s – every game vs own average" % n, lambda: chart_heat(s["rows"], "%s: game-by-game z-scores" % n)))
    fl = flags_by_pg.get(n, [])
    rr = role_rows(s["rows"])
    if rr:
        h.append("<h4>By role</h4>" + role_table(rr))
    h.append("<h4>Games that stand out for %s</h4>" % esc(n))
    h.append("<ul>" + "".join("<li>%s</li>" % esc(x) for x in fl) + "</ul>" if fl else "<p class='muted'>Nothing unusual against their own average (needs 5+ games for detection).</p>")
    for title, grp in (("Map", s["maps"]), ("Mode", s["modes"])):
        rows = []
        for k, rs in sorted(grp.items()):
            dec = [r for r in rs if r["won"] is not None]; w = sum(1 for r in dec if r["won"])
            rows.append([esc(k), len(rs), "%d–%d" % (w, len(dec) - w), sum(r["kills"] for r in rs), sum(r["deaths"] for r in rs),
                         "%.2f" % (sum(r["kills"] for r in rs) / max(1, sum(r["deaths"] for r in rs))), "%.0f" % avg(r["dpm"] for r in rs)])
        h.append("<h4>By %s</h4>" % title.lower() + table([(title, "l"), "Games", "W–L", "Kills", "Deaths", "K/D", "Dmg/min"], rows))
    rows = []
    for r in s["rows"]:
        rows.append([r["label"], esc(r["game"]["map"]), esc(r["game"]["mode"]), fmt_time(r["game"]["secs"]), tspan(r["team"]), badge(r["won"]),
                     esc(r["clsname"]), esc(r["role"].split(" ")[0]), r["kills"], r["deaths"], r["assists"], "%.2f" % r["kd"], "{:,}".format(r["dmg"]), "{:,}".format(r["taken"]),
                     "{:,}".format(r["heal"]), "%.0f" % r["score"], "%+.1f" % (r["own_skill"] - r["opp_skill"])])
    h.append("<h4>All games</h4>" + table(["Game", ("Map", "l"), ("Mode", "l"), "Length", "Team", "Result", ("Class", "l"), ("Role", "l"), "K", "D", "A", "K/D",
                                           "Dmg dealt", "Dmg taken", "Healing", "Score", "Bot skill edge"], rows))
    h.append("</div>")
    return "".join(h)


def players_tab(S, G, PG, ch, flags_by_pg):
    if not S:
        return "<p class='muted'>No player statistics were found in this file.</p>"
    rows = []
    for s in S:
        rows.append(["<a href='#' class='plink' data-p='%s'>%s</a>" % (esc(s["name"]), esc(s["name"])), s["games"], "%d–%d" % (s["wins"], s["losses"]),
                     (fmt_pct(s["winrate"]), s["winrate"] if s["winrate"] is not None else -1), s["kills"], s["deaths"], s["assists"], "%.2f" % s["kd"],
                     "%.2f" % s["avg_kd"], "%.0f" % avg(r["score"] for r in s["rows"]), "{:,}".format(s["dmg"]), "%.0f" % s["dpm"], "{:,}".format(s["heal"]), s["objk"],
                     "%.1f" % (s["played"] / 60), esc(s["classes"].most_common(1)[0][0])])
    h = ["<h3>Player comparison</h3>", table([("Player", "l"), "Games", "W–L", "Win %", "Kills", "Deaths", "Assists", "K/D", "Avg game K/D", "Avg score", "Damage", "Dmg/min", "Healing", "Obj kills", "Minutes", ("Top class", "l")], rows)]
    if len(S) > 1:
        h.append(ch.make("Players side by side", lambda: chart_players_compare(S)))
    h.append("<div class='filters'><b>View a player:</b> " + "".join("<button class='pbtn' data-p='%s'>%s</button>" % (esc(s["name"]), esc(s["name"])) for s in S) + "<button class='pbtn' data-p=''>Hide</button></div>")
    h.append("".join(player_section(s, G, PG, ch, flags_by_pg) for s in S))
    return "".join(h)


# --------------------------------------------------------------- bots tab
def bot_stats(G):
    b = {}
    for r in G:
        if r["winner"] not in r["teams"]: continue
        for x in r["bots"]:
            if x["name"].startswith("CPU_"):
                continue  # CPU_n bots get new skill/aggression/cooperativeness every game, so an ID is not a stable identity
            k = (x["id"], x["name"])
            e = b.setdefault(k, dict(id=x["id"], name=x["name"], games=0, wins=0, skill=[], aggression=[], cooperativeness=[], swaps=[], finals=Counter()))
            if x["hist"]: e["swaps"].append(x["swaps"]); e["finals"][x["final"]] += 1
            e["games"] += 1; e["wins"] += x["team"] == r["winner"]
            for a in ("skill", "aggression", "cooperativeness"): e[a].append(x[a])
    out = []
    for e in b.values():
        out.append(dict(id=e["id"], name=e["name"], games=e["games"], wins=e["wins"], winrate=100 * e["wins"] / e["games"],
                        skill=avg(e["skill"]), aggression=avg(e["aggression"]), cooperativeness=avg(e["cooperativeness"]),
                        swaps=(avg(e["swaps"]) if e["swaps"] else None), top=(e["finals"].most_common(1)[0][0] if e["finals"] else "–")))
    return out


def bots_tab(G, ch):
    B = bot_stats(G)
    h = ["<p class='muted'>Bots called CPU_n are re-generated every game: the same ID gets a different skill, aggression and cooperativeness each time, so they are analysed by their traits rather than by ID. Only named bots (e.g. BrickBot) are listed individually, and even their traits change between games.</p>"]
    h.append(ch.make("Bot make-up per game", lambda: chart_bot_makeup(G)))
    h.append(ch.make("Skill gap vs result", lambda: chart_skill_vs_win(G)))
    h.append(ch.make("Win rate by bot trait value", lambda: chart_trait_winrate(G)))
    if not B:
        h.append(bot_class_tables(G, ch))
        return "".join(h)
    rows = [[esc(b["name"]), esc(b["id"]), b["games"], b["wins"], (fmt_pct(b["winrate"]), b["winrate"]), "%.1f" % b["skill"], "%.1f" % b["aggression"], "%.1f" % b["cooperativeness"],
             ("%.1f" % b["swaps"] if b["swaps"] is not None else "–", b["swaps"] if b["swaps"] is not None else -1), esc(b["top"])]
            for b in sorted(B, key=lambda b: (-b["games"], -b["winrate"]))]
    h.append("<h3>Named bots</h3>" + table([("Bot", "l"), "ID", "Games", "Wins", "Win %", "Avg skill", "Avg aggression", "Avg cooperativeness", "Avg class switches", ("Most common final class", "l")], rows))
    h.append(bot_class_tables(G, ch))
    return "".join(h)



# ================================================== scores, records, matchups
def add_scores(PG):
    """Performance score 0-100ish: 50 = typical for this data set, +/-10 per standard deviation.
    Blends K/D, kills/min, damage/min and damage ratio. Needs >=3 player-games, else everyone is 50."""
    keys = ("kd", "kpm", "dpm", "dmg_ratio") + (("apm",) if any(p["assists"] for p in PG) else ())
    if len(PG) < 3:
        for p in PG: p["score"] = 50.0
        return
    stats = {k: (st.mean(p[k] for p in PG), st.pstdev([p[k] for p in PG]) or 1.0) for k in keys}
    for p in PG:
        z = avg((p[k] - stats[k][0]) / stats[k][1] for k in keys)
        p["score"] = max(0.0, min(100.0, 50 + 10 * z))


def binom_p(k, n):
    """Exact two-sided binomial test against a fair 50/50 split."""
    from math import comb
    if n == 0: return 1.0
    pk = comb(n, k)
    return min(1.0, sum(comb(n, i) for i in range(n + 1) if comb(n, i) <= pk) / 2 ** n)


def records_tab(G, PG, S):
    if not PG and not G:
        return "<p class='muted'>Nothing to show.</p>"
    A = []

    def award(title, rows, key, fmt, who=lambda r: r["name"], rev=True):
        rows = list(rows)
        if not rows: return
        r = max(rows, key=key) if rev else min(rows, key=key)
        A.append([esc(title), esc(who(r)), r["label"], esc("%s / %s" % (r["game"]["map"], r["game"]["mode"])), fmt(r)])
    award("Most kills in a game", PG, lambda r: r["kills"], lambda r: str(r["kills"]))
    award("Best K/D (min. 3 kills)", [r for r in PG if r["kills"] >= 3], lambda r: r["kd"], lambda r: "%.2f" % r["kd"])
    award("Most assists", [r for r in PG if r["assists"] > 0], lambda r: r["assists"], lambda r: str(r["assists"]))
    award("Best KDA (kills+assists per death, min. 3 kills+assists)", [r for r in PG if r["kills"] + r["assists"] >= 3], lambda r: r["kda"], lambda r: "%.2f" % r["kda"])
    award("Most damage dealt", PG, lambda r: r["dmg"], lambda r: "{:,}".format(r["dmg"]))
    award("Highest damage per minute (min. 1 min played)", [r for r in PG if r["played"] >= 60], lambda r: r["dpm"], lambda r: "%.0f" % r["dpm"])
    award("Most healing dealt", PG, lambda r: r["heal"], lambda r: "{:,}".format(r["heal"]))
    award("Most object kills", [r for r in PG if r["objk"] > 0], lambda r: r["objk"], lambda r: str(r["objk"]))
    award("Most damage taken (toughest)", PG, lambda r: r["taken"], lambda r: "{:,}".format(r["taken"]))
    award("Highest performance score", PG, lambda r: r["score"], lambda r: "%.0f" % r["score"])
    award("Flawless win (most kills, 0 deaths)", [r for r in PG if r["deaths"] == 0 and r["won"]], lambda r: r["kills"], lambda r: "%d kills, 0 deaths" % r["kills"])
    award("Biggest upset win (won vs higher-skill bots)", [r for r in PG if r["won"] and r["opp_skill"] > r["own_skill"]],
          lambda r: r["opp_skill"] - r["own_skill"], lambda r: "bots %.1f vs %.1f" % (r["own_skill"], r["opp_skill"]))
    if G:
        lg = max(G, key=lambda r: r["secs"]); sg = min((r for r in G if r["secs"] > 0), key=lambda r: r["secs"], default=None)
        A.append(["Longest game", "–", lg["label"], esc("%s / %s" % (lg["map"], lg["mode"])), fmt_time(lg["secs"])])
        if sg: A.append(["Shortest game", "–", sg["label"], esc("%s / %s" % (sg["map"], sg["mode"])), fmt_time(sg["secs"])])
    if S:
        b = max(S, key=lambda s: s["win_streak"])
        if b["win_streak"]: A.append(["Longest win streak", esc(b["name"]), "–", "file order", "%d games" % b["win_streak"]])
        b = max(S, key=lambda s: s["games"])
        A.append(["Most games played", esc(b["name"]), "–", "–", str(b["games"])])
    h = ["<h3>Awards & records</h3>", table([("Award", "l"), ("Holder", "l"), "Game", ("Map / mode", "l"), "Value"], A)]
    h.append("<h3>Leaderboards (top 5 single-game performances)</h3><div class='cols'>")
    for key, nm, f in (("score", "Performance score", "%.0f"), ("kills", "Kills", "%d"), ("kd", "K/D", "%.2f"), ("dmg", "Damage dealt", "%d"), ("heal", "Healing dealt", "%d")):
        top = sorted(PG, key=lambda r: -r[key])[:5]
        h.append("<div><h4>%s</h4>%s</div>" % (nm, table(["#", ("Player", "l"), "Game", "Value"],
                 [[i + 1, esc(r["name"]), r["label"], f % r[key]] for i, r in enumerate(top)], sortable=False)))
    h.append("</div><p class='muted'>Performance score: 50 is typical for this data; each ±10 is one standard deviation. It blends K/D, kills/min, damage/min, damage dealt vs taken and (when recorded) assists/min.</p>")
    return "".join(h)


def skill_buckets(G):
    out = {"<1": [0, 0], "1–2": [0, 0], "2+": [0, 0]}
    ups = []
    for r in G:
        if r["winner"] not in ("red", "blue") or not r.get("red_bots") or not r.get("blue_bots"): continue
        d = r["red_skill"] - r["blue_skill"]
        if d == 0: continue
        fav = "red" if d > 0 else "blue"
        gap = abs(d)
        b = "<1" if gap < 1 else ("1–2" if gap < 2 else "2+")
        out[b][1] += 1
        if r["winner"] == fav: out[b][0] += 1
        else: ups.append((gap, r))
    return out, sorted(ups, key=lambda x: -x[0])


def chart_fav(buckets):
    if not any(v[1] for v in buckets.values()): return None
    fig, ax = plt.subplots(figsize=(6, 3.4))
    ks = list(buckets)
    ax.bar(ks, [100 * buckets[k][0] / buckets[k][1] if buckets[k][1] else 0 for k in ks], color="#4c78a8")
    for i, k in enumerate(ks): ax.text(i, 2, "n=%d" % buckets[k][1], ha="center", color="w", fontsize=9)
    ax.axhline(50, color=GREY, ls="--", lw=1); ax.set_ylim(0, 100)
    ax.set_xlabel("Bot-skill gap between teams"); ax.set_ylabel("Higher-skill team win %"); ax.set_title("Does bot skill decide games?")
    return fig


def chart_class(rows):
    if not rows: return None
    fig, axs = plt.subplots(1, 2, figsize=(11, 3.4))
    ns = [r[0] for r in rows]
    axs[0].bar(ns, [r[3] for r in rows], color="#b279a2"); axs[0].axhline(50, color=GREY, ls="--", lw=1)
    axs[0].set_title("Avg performance score by class"); axs[0].tick_params(axis="x", rotation=30)
    axs[1].bar(ns, [r[1] for r in rows], color="#72b7b2"); axs[1].set_title("Player-games by class"); axs[1].tick_params(axis="x", rotation=30)
    fig.tight_layout()
    return fig


def role_rows(rows):
    out = []
    by = defaultdict(list)
    for p in rows: by[p["role"]].append(p)
    for role in list(ROLES) + [r for r in by if r not in ROLES]:
        rs = by.get(role)
        if not rs: continue
        dec = [r for r in rs if r["won"] is not None]
        out.append(dict(role=role, n=len(rs), win=100 * sum(r["won"] for r in dec) / len(dec) if dec else None, score=avg(r["score"] for r in rs),
                        kd=avg(r["kd"] for r in rs), dpm=avg(r["dpm"] for r in rs), taken=avg(r["taken"] / max(r["played"] / 60, 1e-9) for r in rs),
                        heal=avg(r["heal"] / max(r["played"] / 60, 1e-9) for r in rs), kills=avg(r["kills"] for r in rs), deaths=avg(r["deaths"] for r in rs),
                        objk=avg(r["objk"] for r in rs)))
    return out


def role_table(rr):
    return table([("Role", "l"), "Games", "Win %", "Avg score", "Avg K/D", "Avg kills", "Avg deaths", "Damage dealt/min", "Damage taken/min", "Healing/min", "Avg obj kills"],
                 [["<span style='color:%s;font-weight:600'>%s</span>" % (ROLE_COL.get(r["role"], GREY), esc(r["role"])), r["n"], (fmt_pct(r["win"]), r["win"] if r["win"] is not None else -1),
                   "%.0f" % r["score"], "%.2f" % r["kd"], "%.1f" % r["kills"], "%.1f" % r["deaths"], "%.0f" % r["dpm"], "%.0f" % r["taken"], "%.0f" % r["heal"], "%.1f" % r["objk"]] for r in rr])


def chart_roles(rr, title="Role profile (per minute played)"):
    if not rr: return None
    fig, axs = plt.subplots(1, 3, figsize=(12, 3.4))
    for ax, (k, t) in zip(axs, (("dpm", "Damage dealt / min"), ("taken", "Damage taken / min"), ("heal", "Healing dealt / min"))):
        ax.bar([r["role"].split(" ")[0] for r in rr], [r[k] for r in rr], color=[ROLE_COL.get(r["role"], GREY) for r in rr])
        for i, r in enumerate(rr): ax.text(i, 0, "n=%d" % r["n"], ha="center", va="bottom", fontsize=8, color="w")
        ax.set_title(t)
    fig.suptitle(title, y=1.02); fig.tight_layout()
    return fig


def matchups_tab(G, PG, ch):
    h = ["<h3>Team balance (Red vs Blue)</h3><p class='muted'>p-value: chance of a split this uneven if both sides were truly equal (exact binomial test). Below about 0.05 with a decent number of games hints at a real imbalance; small samples rarely reach it.</p>"]
    rows = []
    groups = [("All games", G)]
    for key in ("map", "mode"):
        d = defaultdict(list)
        for r in G: d[r[key]].append(r)
        groups += [("%s: %s" % (key, k), v) for k, v in sorted(d.items())]
    for name, rs in groups:
        rw, bw = sum(r["winner"] == "red" for r in rs), sum(r["winner"] == "blue" for r in rs)
        n = rw + bw
        rows.append([esc(name), len(rs), rw, bw, ("%.0f%%" % (100 * rw / n) if n else "–", 100 * rw / n if n else -1), "%.3f" % binom_p(rw, n) if n else "–"])
    h.append(table([("Group", "l"), "Games", "Red wins", "Blue wins", "Red win %", "p-value"], rows))
    b, ups = skill_buckets(G)
    h.append("<h3>Does bot skill decide games?</h3>")
    h.append(table([("Skill gap (avg per team)", "l"), "Games", "Higher-skill team won", "Win %"],
                   [[k, v[1], v[0], "%.0f%%" % (100 * v[0] / v[1]) if v[1] else "–"] for k, v in b.items()], sortable=False))
    h.append(ch.make("Bot skill vs outcome", lambda: chart_fav(b)))
    if ups:
        h.append("<h4>Biggest upsets (lower-skill team won)</h4>" + table(["Game", ("Map / mode", "l"), "Skill R/B", "Winner"],
                 [[r["label"], esc("%s / %s" % (r["map"], r["mode"])), "%.1f / %.1f" % (r["red_skill"], r["blue_skill"]), tspan(r["winner"])] for _, r in ups[:5]], sortable=False))
    rr = role_rows(PG)
    if rr:
        h.append("<h3>Role performance</h3><p class='muted'>Strikers = Scout, Soldier, Sniper, Bomber, Mobility, Infiltraitor, Seeker · Guardians = Gunner, Brawler, Mechanic, Pyro, Rocketeer · Sustainers = Healer, Scientist, Shocksmith. Few games per role means high uncertainty.</p>")
        h.append(role_table(rr)); h.append(ch.make("Role profile", lambda: chart_roles(rr)))
    # class performance
    cl = defaultdict(list)
    for p in PG: cl[p["clsname"]].append(p)
    role_of = {p["clsname"]: p["role"] for p in PG}
    crow = []
    for k, rs in sorted(cl.items(), key=lambda kv: -len(kv[1])):
        dec = [r for r in rs if r["won"] is not None]
        crow.append((k, len(rs), 100 * sum(r["won"] for r in dec) / len(dec) if dec else None, avg(r["score"] for r in rs),
                     avg(r["kd"] for r in rs), avg(r["dpm"] for r in rs), avg(r["heal"] for r in rs), len({r["name"] for r in rs})))
    if crow:
        h.append("<h3>Class performance</h3><p class='muted'>Averages per player-game. Few games per class means high uncertainty.</p>")
        h.append(table([("Class", "l"), "Games", "Win %", "Avg score", "Avg K/D", "Dmg/min", "Avg healing", "Players"],
                       [[esc(c[0]) + " <small class='muted'>%s</small>" % esc(role_of.get(c[0], "").split(" ")[0]), c[1], (fmt_pct(c[2]), c[2] if c[2] is not None else -1), "%.0f" % c[3], "%.2f" % c[4], "%.0f" % c[5], "%.0f" % c[6], c[7]] for c in crow]))
        h.append(ch.make("Classes", lambda: chart_class(crow)))
    # map x mode matrix
    maps = sorted({r["map"] for r in G}); modes = sorted({r["mode"] for r in G})
    mrows = []
    for m in maps:
        row = [esc(m)]
        for g in modes:
            rs = [r for r in G if r["map"] == m and r["mode"] == g]
            row.append("%d · %s" % (len(rs), fmt_time(avg(r["secs"] for r in rs))) if rs else "<span class='muted'>–</span>")
        mrows.append(row)
    h.append("<h3>Map × mode matrix</h3><p class='muted'>Games played · average length</p>" + table([("Map", "l")] + modes, mrows, sortable=False))
    return "".join(h)


def chart_timeline(S):
    S2 = [s for s in S if s["games"] >= 2]
    if not S2: return None
    fig, axs = plt.subplots(1, 3, figsize=(13, 3.6))
    for i, s in enumerate(S2):
        c = PALETTE[i % len(PALETTE)]
        rows = s["rows"]; x = [r["n"] for r in rows]
        k = d = 0; ks = []
        for r in rows:
            k += r["kills"]; d += r["deaths"]; ks.append(k / max(1, d))
        axs[0].plot(x, ks, "o-", color=c, label=s["name"])
        w = n = 0; ws = []
        for r in rows:
            if r["won"] is not None: n += 1; w += r["won"]
            ws.append(100 * w / n if n else 0)
        axs[1].plot(x, ws, "o-", color=c, label=s["name"])
        axs[2].plot(x, [r["score"] for r in rows], "o-", color=c, label=s["name"])
    axs[0].set_title("Cumulative K/D"); axs[1].set_title("Cumulative win %"); axs[2].set_title("Performance score per game")
    axs[0].axhline(1, color=GREY, lw=.8); axs[1].axhline(50, color=GREY, lw=.8); axs[2].axhline(50, color=GREY, lw=.8)
    for a in axs: a.set_xlabel("Game #")
    axs[0].legend(); fig.tight_layout()
    return fig


def chart_length_trend(G):
    if len(G) < 3: return None
    fig, ax = plt.subplots(figsize=(10, 3.2))
    x = [r["n"] for r in G]; y = [r["secs"] / 60 for r in G]
    ax.plot(x, y, "o-", color="#4c78a8", label="length")
    ax.plot(x, [avg(y[max(0, i - 2):i + 1]) for i in range(len(y))], "--", color="k", label="3-game average")
    ax.set_xlabel("Game #"); ax.set_ylabel("Minutes"); ax.set_title("Game length over time"); ax.legend()
    return fig


def trends_tab(G, S, ch):
    h = ["<p class='muted'>Games are shown in the order they appear in the file(s).</p>"]
    if S:
        rows = []
        for s in S:
            res = "".join("<span class='%s'>%s</span>" % ("win" if r["won"] else "loss", "W" if r["won"] else "L") if r["won"] is not None else "<span class='muted'>?</span>" for r in s["rows"])
            last = s["rows"][-5:]
            rows.append([esc(s["name"]), res, "%.1f" % avg(r["score"] for r in s["rows"]), "%.1f" % avg(r["score"] for r in last),
                         "%.2f" % (sum(r["kills"] for r in last) / max(1, sum(r["deaths"] for r in last)))])
        h.append("<h3>Form</h3>" + table([("Player", "l"), ("Results (oldest → newest)", "l"), "Avg score", "Avg score (last 5)", "K/D (last 5)"], rows, sortable=False))
        h.append(ch.make("Players over time", lambda: chart_timeline(S)))
    h.append(ch.make("Game length over time", lambda: chart_length_trend(G)))
    return "".join(h)



def chart_endings(G):
    reasons = sorted({r["end_label"] for r in G}, key=lambda x: -sum(1 for r in G if r["end_label"] == x))
    modes = sorted({r["mode"] for r in G})
    if len(reasons) < 1: return None
    fig, ax = plt.subplots(figsize=(9, 0.5 * len(reasons) + 1.6))
    left = [0] * len(reasons)
    for i, m in enumerate(modes):
        vals = [sum(1 for r in G if r["end_label"] == e and r["mode"] == m) for e in reasons]
        ax.barh(reasons, vals, left=left, label=m, color=PALETTE[i % len(PALETTE)])
        left = [a + b for a, b in zip(left, vals)]
    ax.invert_yaxis(); ax.set_xlabel("Games"); ax.set_title("How games end (stacked by mode)"); ax.legend(fontsize=8)
    return fig


def overview_extra(G, files_info, ch):
    h = []
    cur = [(fi["name"], fi["current"]) for fi in (files_info or []) if fi.get("current")]
    for name, c in cur:
        gm = c.get("gamemode") if isinstance(c.get("gamemode"), dict) else {}
        mp = c.get("map") if isinstance(c.get("map"), dict) else {}
        h.append("<p class='flag'>▶ Game #%s was in progress when %s was saved: <b>%s</b> on <b>%s</b> (version %s). It is not counted until it finishes.</p>" % (
            esc(c.get("game_id", "?")), esc(name), esc(gm.get("name", "?")), esc(mp.get("name", "?")), esc(version_str(c.get("version")))))
    servers = sorted({(r["server"], r["world_hex"]) for r in G if r["server"]})
    if servers:
        rows = []
        for sv, hx in servers:
            rs = [r for r in G if r["server"] == sv]
            ids = [r["gid"] for r in rs if r["gid"] is not None]
            rows.append([esc(sv), "<code>%s</code>" % esc(hx[:8] + "…" + hx[-4:]), len(rs), "#%d – #%d" % (min(ids), max(ids)),
                         esc(", ".join(sorted({r["version"] for r in rs}))), len({p["name"] for r in rs for p in r["pgs"]}),
                         fmt_time(sum(r["secs"] for r in rs))])
        h.append("<h3>Servers / worlds</h3>" + table([("Server", "l"), ("World ID", "l"), "Games", "Game IDs", ("Version(s)", "l"), "Players", "Total time"], rows))
    vers = sorted({r["version"] for r in G})
    if len(vers) > 1:
        rows = []
        for v in vers:
            rs = [r for r in G if r["version"] == v]
            dec = [r for r in rs if r["winner"] in ("red", "blue")]
            rows.append([esc(v), len(rs), fmt_time(avg(r["secs"] for r in rs)), "%.0f%%" % (100 * sum(r["winner"] == "red" for r in dec) / len(dec)) if dec else "–",
                         "%.0f%%" % (100 * sum(r["win_state"] == "force_ended" for r in rs) / len(rs))])
        h.append("<h3>By game version</h3><p class='muted'>Use this to see whether balance or length changed between versions.</p>" + table(
            [("Version", "l"), "Games", "Avg length", "Red win %", "Force-ended %"], rows))
    reasons = sorted({r["end_label"] for r in G}, key=lambda x: -sum(1 for r in G if r["end_label"] == x))
    if any(r["win_state"] for r in G):
        rows = []
        for e in reasons:
            rs = [r for r in G if r["end_label"] == e]
            rows.append([esc(e), len(rs), "%.0f%%" % (100 * len(rs) / len(G)), fmt_time(avg(r["secs"] for r in rs)), fmt_time(max(r["secs"] for r in rs)),
                         sum(r["winner"] == "red" for r in rs), sum(r["winner"] == "blue" for r in rs), esc(", ".join(sorted({r["mode"] for r in rs})))])
        h.append("<h3>How games end</h3>" + table([("Ended by", "l"), "Games", "Share", "Avg length", "Longest", "Red wins", "Blue wins", ("Modes", "l")], rows))
        h.append(ch.make("How games end", lambda: chart_endings(G)))
    return "".join(h)


def bot_class_tables(G, ch):
    h = []
    use = {}
    for r in G:
        dec = r["winner"] in ("red", "blue")
        for b in r["bots"]:
            for cn, rl in zip(b["hist_names"], b["hist_roles"]):
                u = use.setdefault(cn, dict(role=rl, entries=0, final=0, bots=set(), skill=[], win=[]))
                u["entries"] += 1
            if b["final"]:
                u = use[b["final"]]
                u["final"] += 1; u["bots"].add((r["n"], b["id"])); u["skill"].append(b["skill"])
                if dec: u["win"].append(b["team"] == r["winner"])
    if not use:
        return "<p class='muted'>No bot class history was recorded in this data.</p>"
    tot = sum(u["entries"] for u in use.values())
    rows = [[esc(k), esc(u["role"].split(" ")[0]), u["entries"], "%.0f%%" % (100 * u["entries"] / tot), u["final"],
             ("%.0f%%" % (100 * sum(u["win"]) / len(u["win"])) if u["win"] else "–", 100 * sum(u["win"]) / len(u["win"]) if u["win"] else -1),
             "%.1f" % avg(u["skill"])] for k, u in sorted(use.items(), key=lambda kv: -kv[1]["entries"])]
    h.append("<h3>Bot class usage</h3><p class='muted'>The game stores each bot's class history newest-first; the report reverses it so paths read oldest → newest, and the newest class is treated as the bot's final class. 'Picks' counts every entry in every history. Win % is for bots whose final class was this one.</p>")
    h.append(table([("Class", "l"), ("Role", "l"), "Picks", "Share", "Finished as", "Win % (final class)", "Avg bot skill"], rows))
    # role totals
    rrole = Counter()
    for u in use.values(): rrole[u["role"]] += u["entries"]
    h.append("<p>Role mix of all bot class picks: " + " · ".join("<b>%s</b> %.0f%%" % (esc(k.split(" ")[0]), 100 * v / tot) for k, v in rrole.most_common()) + "</p>")
    # swaps by mode
    sw = defaultdict(lambda: [0, 0, 0.0])
    for r in G:
        for b in r["bots"]:
            if b["hist"]:
                sw[r["mode"]][0] += 1; sw[r["mode"]][1] += b["swaps"]; sw[r["mode"]][2] += r["secs"] / 60
    if sw:
        h.append("<h3>Class switching by mode</h3>" + table([("Mode", "l"), "Bots", "Avg switches / bot", "Switches / bot / 10 min"],
                 [[esc(m), v[0], "%.1f" % (v[1] / v[0]), "%.2f" % (10 * v[1] / v[2] if v[2] else 0)] for m, v in sorted(sw.items())]))
    # team composition vs outcome
    tg = []
    for r in G:
        if r["winner"] not in ("red", "blue"): continue
        for t in ("red", "blue"):
            c = r["comp"].get(t)
            if c and sum(c.values()):
                tg.append((c, t == r["winner"], r))
    if tg:
        def cnt(c, role): return c.get(role, 0)
        cats = [("Has at least one Sustainer", lambda c: cnt(c, SUSTAINER) > 0), ("No Sustainer", lambda c: cnt(c, SUSTAINER) == 0),
                ("Has at least one Guardian", lambda c: cnt(c, GUARDIAN) > 0), ("No Guardian", lambda c: cnt(c, GUARDIAN) == 0),
                ("Strikers only", lambda c: cnt(c, GUARDIAN) == 0 and cnt(c, SUSTAINER) == 0),
                ("Balanced (all three roles)", lambda c: cnt(c, GUARDIAN) > 0 and cnt(c, SUSTAINER) > 0 and cnt(c, STRIKER) > 0)]
        rows = []
        for nm, f in cats:
            sel = [w for c, w, _ in tg if f(c)]
            if sel: rows.append([esc(nm), len(sel), sum(sel), "%.0f%%" % (100 * sum(sel) / len(sel))])
        h.append("<h3>Team composition vs result</h3><p class='muted'>Each team in each finished game is one row of data, using final bot classes plus the human player's class. Teams in one game are not independent, so treat small gaps as noise.</p>")
        h.append(table([("Team make-up", "l"), "Teams", "Wins", "Win %"], rows, sortable=False))
        win = [c for c, w, _ in tg if w]; lose = [c for c, w, _ in tg if not w]
        rrows = [[esc(role.split(" ")[0]), "%.2f" % avg(cnt(c, role) for c in win), "%.2f" % avg(cnt(c, role) for c in lose)] for role in ROLES]
        h.append("<h4>Average players per role: winning vs losing teams</h4>" + table([("Role", "l"), "Winning teams", "Losing teams"], rrows, sortable=False))
        def chart():
            fig, ax = plt.subplots(figsize=(6.5, 3.4))
            x = range(len(ROLES)); w = 0.38
            ax.bar([i - w / 2 for i in x], [avg(cnt(c, r) for c in win) for r in ROLES], w, color="#2e9e5b", label="Winning teams")
            ax.bar([i + w / 2 for i in x], [avg(cnt(c, r) for c in lose) for r in ROLES], w, color="#c0392b", label="Losing teams")
            ax.set_xticks(list(x)); ax.set_xticklabels([r.split(" ")[0] for r in ROLES]); ax.set_title("Avg role count per team"); ax.legend()
            return fig
        h.append(ch.make("Role mix: winners vs losers", chart))
    return "".join(h)



# ============================================================ bot performance
def chart_trait_winrate(G):
    fig, axs = plt.subplots(1, 3, figsize=(12, 3.4))
    any_ = False
    for ax, (a, t) in zip(axs, (("skill", "Skill"), ("aggression", "Aggression"), ("cooperativeness", "Cooperativeness"))):
        d = defaultdict(lambda: [0, 0])
        for r in G:
            if r["winner"] not in ("red", "blue"): continue
            for b in r["bots"]:
                d[int(b[a])][1] += 1; d[int(b[a])][0] += b["team"] == r["winner"]
        ks = sorted(d)
        if not ks: continue
        any_ = True
        ax.bar([str(k) for k in ks], [100 * d[k][0] / d[k][1] for k in ks], color="#4c78a8")
        ax.axhline(50, color=GREY, ls="--", lw=1); ax.set_ylim(0, 100); ax.set_title("Win %% by bot %s" % t.lower()); ax.set_xlabel(t)
    fig.tight_layout()
    return fig if any_ else None


BP_METRICS = [("kd", "K/D", "%.2f"), ("kpm", "Kills/min", "%.2f"), ("dthpm", "Deaths/min", "%.2f"), ("dpm", "Damage/min", "%.0f"),
              ("dtpm", "Taken/min", "%.0f"), ("hpm", "Healing/min", "%.0f"), ("apm", "Assists/min", "%.2f"),
              ("acc", "Accuracy", "pct"), ("hsr", "Headshot rate", "pct"), ("ult10", "Ults/10 min", "%.2f"), ("dph", "Damage/hit", "%.0f")]


def fv(v, f):
    if v is None: return "–"
    return "%.0f%%" % (100 * v) if f == "pct" else f % v


def avgn(vals):
    v = [x for x in vals if x is not None]
    return sum(v) / len(v) if v else None


def agg(bs, mk):
    """Group value for a metric. Ratios are pooled (total hits / total shots) so one odd record can't dominate; the rest are simple means."""
    if mk == "acc":
        sh = sum(b["shots"] for b in bs); return sum(b["hits"] for b in bs) / sh if sh else None
    if mk == "hsr":
        hi = sum(b["hits"] for b in bs); return sum(b["hs"] for b in bs) / hi if hi else None
    if mk == "dph":
        hi = sum(b["hits"] for b in bs); return sum(b["dmg"] for b in bs) / hi if hi else None
    return avgn([b[mk] for b in bs])


def _ranks(x):
    o = sorted(range(len(x)), key=lambda i: x[i]); r = [0.0] * len(x); i = 0
    while i < len(o):
        j = i
        while j + 1 < len(o) and x[o[j + 1]] == x[o[i]]: j += 1
        for k in range(i, j + 1): r[o[k]] = (i + j) / 2 + 1
        i = j + 1
    return r


def pearson(x, y):
    n = len(x)
    if n < 3: return None
    mx, my = sum(x) / n, sum(y) / n
    sx = sum((a - mx) ** 2 for a in x); sy = sum((b - my) ** 2 for b in y)
    if sx == 0 or sy == 0: return None
    return sum((a - mx) * (b - my) for a, b in zip(x, y)) / (sx * sy) ** 0.5


def corr_p(r, n):
    """Approximate two-sided p-value (Fisher z)."""
    from math import atanh, erfc, sqrt
    if r is None or n <= 3: return None
    r = max(-0.999999, min(0.999999, r))
    return erfc(abs(atanh(r)) * sqrt(n - 3) / sqrt(2))


def trait_corr(BG):
    out = []
    for tk, tn in (("skill", "Skill"), ("aggression", "Aggression"), ("cooperativeness", "Cooperativeness")):
        for mk, mn, f in BP_METRICS:
            pts = [(b[tk], b[mk]) for b in BG if b[mk] is not None]
            if len(pts) < 8: continue
            x, y = [p[0] for p in pts], [p[1] for p in pts]
            r = pearson(x, y)
            rho = pearson(_ranks(x), _ranks(y))
            if r is None: continue
            out.append(dict(trait=tn, tk=tk, metric=mn, mk=mk, r=r, rho=rho, n=len(pts), p=corr_p(r, len(pts))))
    return out


def chart_bot_hist(BG):
    fig, axs = plt.subplots(1, 3, figsize=(12, 3.2))
    acc = [min(b["acc"], 1.6) for b in BG if b["acc"] is not None]
    hsr = [b["hsr"] for b in BG if b["hsr"] is not None]
    ul = [b["ult10"] for b in BG]
    for ax, v, t, c in ((axs[0], acc, "Accuracy (hits ÷ shots; capped at 160%)", "#4c78a8"), (axs[1], hsr, "Headshot rate (headshots ÷ hits)", "#e45756"), (axs[2], ul, "Ultimates per 10 min", "#54a24b")):
        if v: ax.hist(v, bins=12, color=c, edgecolor="w")
        ax.set_title(t, fontsize=9); ax.set_ylabel("Bot-games")
    if acc: axs[0].axvline(1, color="k", ls="--", lw=1)
    fig.tight_layout()
    return fig


def chart_trait_scatter(BG):
    panels = (("skill", "acc", "Skill", "Accuracy"), ("skill", "hsr", "Skill", "Headshot rate"), ("skill", "dpm", "Skill", "Damage/min"),
              ("skill", "kd", "Skill", "K/D"), ("aggression", "dthpm", "Aggression", "Deaths/min"), ("cooperativeness", "apm", "Cooperativeness", "Assists/min"))
    fig, axs = plt.subplots(2, 3, figsize=(12, 6.2))
    import random
    rnd = random.Random(1)
    for ax, (tk, mk, tn, mn) in zip(axs.flat, panels):
        pts = [(b[tk], b[mk]) for b in BG if b[mk] is not None]
        if len(pts) < 3: ax.axis("off"); continue
        x = [p[0] for p in pts]; y = [p[1] for p in pts]
        ax.scatter([a + rnd.uniform(-.15, .15) for a in x], y, s=22, alpha=.6, color="#4c78a8")
        n = len(x); mx, my = sum(x) / n, sum(y) / n; sxx = sum((a - mx) ** 2 for a in x)
        if sxx:
            m = sum((a - mx) * (b - my) for a, b in zip(x, y)) / sxx
            xs = [min(x), max(x)]; ax.plot(xs, [my + m * (a - mx) for a in xs], color="#d9534f", lw=1.5)
        r = pearson(x, y)
        ax.set_xlabel(tn); ax.set_ylabel(mn); ax.set_title("%s vs %s%s" % (mn, tn.lower(), " (r=%.2f, n=%d)" % (r, n) if r is not None else ""), fontsize=9)
    fig.tight_layout()
    return fig


def chart_corr_heat(C):
    if not C: return None
    import numpy as np
    traits = ["Skill", "Aggression", "Cooperativeness"]; mets = []
    for c in C:
        if c["metric"] not in mets: mets.append(c["metric"])
    M = np.full((3, len(mets)), np.nan)
    for c in C: M[traits.index(c["trait"]), mets.index(c["metric"])] = c["r"]
    fig, ax = plt.subplots(figsize=(11, 2.8))
    im = ax.imshow(M, cmap="coolwarm", vmin=-1, vmax=1, aspect="auto")
    ax.set_xticks(range(len(mets))); ax.set_xticklabels(mets, rotation=30, ha="right"); ax.set_yticks(range(3)); ax.set_yticklabels(traits)
    for i in range(3):
        for j in range(len(mets)):
            if not np.isnan(M[i, j]): ax.text(j, i, "%.2f" % M[i, j], ha="center", va="center", fontsize=8)
    fig.colorbar(im, label="Pearson r"); ax.set_title("Bot trait vs performance correlation (-1 to +1)")
    return fig


def chart_bot_class(rows):
    rows = [r for r in rows if r["n"] >= 2]
    if not rows: return None
    fig, axs = plt.subplots(1, 3, figsize=(13, 3.6))
    ns = ["%s (%d)" % (r["name"], r["n"]) for r in rows]
    for ax, (k, t, sc) in zip(axs, (("acc", "Accuracy by final class", 100), ("hsr", "Headshot rate by final class", 100), ("ult10", "Ults per 10 min by final class", 1))):
        vals = [(r[k] or 0) * sc for r in rows]
        ax.barh(ns[::-1], vals[::-1], color=[ROLE_COL.get(r["role"], GREY) for r in rows][::-1]); ax.set_title(t, fontsize=9); ax.tick_params(axis="y", labelsize=7)
    fig.tight_layout()
    return fig


def _group_rows(BG, keyf, labelf=None):
    d = defaultdict(list)
    for b in BG: d[keyf(b)].append(b)
    out = []
    for k, bs in d.items():
        dec = [b for b in bs if b["won"] is not None]
        row = dict(name=k, n=len(bs), win=(100 * sum(b["won"] for b in dec) / len(dec)) if dec else None,
                   role=bs[0]["role"] if bs else "Unknown")
        for mk, _, _ in BP_METRICS: row[mk] = agg(bs, mk)
        out.append(row)
    return out


def _metric_row_cells(r, mets):
    return [fv(r[mk], f) for mk, _, f in mets]


def bot_perf_tab(G, PG, ch):
    BG = [b for r in G for b in r["bgs"]]
    allbots = sum(len(r["bots"]) for r in G)
    if not BG:
        return "<p class='muted'>No bot statistics were found in this data. Bots recorded with a <code>stat</code> block (kills, deaths, shots, headshots, ultimates, …) will appear here.</p>"
    gs = [r for r in G if r["bgs"]]
    listed_in = sum(len(r["bots"]) for r in gs)
    h = []
    ids = [r["gid"] for r in gs if r["gid"] is not None]
    rng = "games %s–%s" % (min(ids), max(ids)) if ids and len(ids) == len(gs) else "%d games" % len(gs)
    h.append("<p>Bot stats are recorded for <b>%d bot-games</b> across <b>%d games</b> (%s). In those games %d bots were listed, so <b>%.0f%%</b> have a stat block%s. "
             "%d of %d bots in all games have no stats (older games, before the stat existed).</p>" % (
                 len(BG), len(gs), rng, listed_in, 100 * len(BG) / listed_in, "" if len(BG) == listed_in else " — the rest have no stat record", allbots - len(BG), allbots))
    h.append("<div class='kpis'>")
    sh, hi = sum(b["shots"] for b in BG), sum(b["hits"] for b in BG)
    h.append(kpi("Bot-games with stats", len(BG), "%d games" % len(gs)))
    h.append(kpi("Avg K/D", "%.2f" % avg(b["kd"] for b in BG), "%d kills / %d deaths" % (sum(b["kills"] for b in BG), sum(b["deaths"] for b in BG))))
    h.append(kpi("Overall accuracy", "%.0f%%" % (100 * hi / sh) if sh else "–", "%s hits / %s shots" % ("{:,}".format(hi), "{:,}".format(sh))))
    h.append(kpi("Headshot rate", "%.0f%%" % (100 * sum(b["hs"] for b in BG) / hi) if hi else "–", "%d headshots" % sum(b["hs"] for b in BG)))
    h.append(kpi("Ultimates used", sum(b["ults"] for b in BG), "%.0f%% of bots used one" % (100 * sum(1 for b in BG if b["ults"] > 0) / len(BG))))
    h.append(kpi("Avg time on field", "%.0f%%" % (100 * avg(b["part"] for b in BG)), "of each game"))
    h.append("</div>")
    over = [b for b in BG if b["acc"] is not None and b["acc"] > 1]
    h.append("<h3>The new stats</h3><ul><li><b>Shots fired / hit</b> → <b>accuracy</b> = hits ÷ shots. %d bot-games (%.0f%%) show accuracy above 100%%, which usually means weapons that register several hits per shot (shotguns, splash or beams). Compare accuracy between similar classes rather than as an absolute.</li>"
             "<li><b>Headshots</b> → <b>headshot rate</b> = headshots ÷ hits.</li><li><b>Ults used</b> → shown per 10 minutes on the field so long games don't dominate.</li>"
             "<li>Per-minute rates use each bot's own time on the field, not the full game length.</li></ul>" % (len(over), 100 * len(over) / len(BG)))
    # distribution
    rows = []
    for mk, mn, f in BP_METRICS:
        v = [b[mk] for b in BG if b[mk] is not None]
        if len(v) >= 2:
            rows.append([esc(mn), len(v), fv(avg(v), f), fv(med(v), f), fv(min(v), f), fv(max(v), f), fv(st.pstdev(v), f)])
    h.append("<h3>Overall distribution (per bot-game)</h3><p class='muted'>Per-bot-game values. Accuracy has a few extreme records (hits far above shots), so trust the median and the pooled figures elsewhere in this tab; group tables use pooled ratios (total hits ÷ total shots).</p>" + table([("Metric", "l"), "n", "Mean", "Median", "Min", "Max", "Std dev"], rows, sortable=False))
    h.append(ch.make("Accuracy, headshot rate and ultimates", lambda: chart_bot_hist(BG)))
    # skill / aggression / coop bands
    def bands(trait, bl, mets, title, note):
        rows = []
        for lo, hi_ in bl:
            bs = [b for b in BG if lo <= b[trait] <= hi_]
            if not bs: continue
            dec = [b for b in bs if b["won"] is not None]
            rows.append(["%s" % (("%g–%g" % (lo, hi_)) if hi_ < 90 else "%g+" % lo), len(bs)] + [fv(agg(bs, mk), f) for mk, _, f in mets] +
                        [("%.0f%%" % (100 * sum(b["won"] for b in dec) / len(dec)) if dec else "–", 100 * sum(b["won"] for b in dec) / len(dec) if dec else -1)])
        return "<h3>%s</h3><p class='muted'>%s</p>" % (title, note) + table([("%s band" % trait.capitalize(), "l"), "Bot-games"] + [mn for _, mn, _ in mets] + ["Team win %"], rows, sortable=False)
    mets_skill = [m for m in BP_METRICS if m[0] in ("kd", "kpm", "dpm", "acc", "hsr", "ult10")]
    h.append(bands("skill", [(1, 2), (3, 4), (5, 6), (7, 8), (9, 99)], mets_skill, "Performance by bot skill",
                   "Does a higher skill setting actually make a bot better? Bands of two skill levels keep the groups big enough to read."))
    mets_ag = [m for m in BP_METRICS if m[0] in ("kd", "kpm", "dthpm", "dpm", "dtpm", "acc")]
    h.append(bands("aggression", [(1, 3), (4, 6), (7, 99)], mets_ag, "Performance by bot aggression", "Aggressive bots are expected to deal and take more damage and die more often."))
    mets_co = [m for m in BP_METRICS if m[0] in ("apm", "hpm", "kd", "dthpm", "dpm")]
    h.append(bands("cooperativeness", [(1, 3), (4, 6), (7, 99)], mets_co, "Performance by bot cooperativeness", "Cooperative bots are expected to assist and heal more."))
    # correlations
    C = trait_corr(BG)
    if C:
        h.append("<h3>Which settings actually change behaviour?</h3><p class='muted'>Pearson r between each bot setting and each stat (±1 = perfectly linked, 0 = unrelated); ρ is the rank-based version, which is less affected by extreme values. 'Approx. p' is the chance of seeing a link this strong by luck alone; with this few bot-games, values near 0.05 are only suggestive. %d comparisons are shown, so around %d \'suggestive\' results are expected by pure chance. Strongest relationships first.</p>" % (len(C), max(1, round(len(C) * 0.05))))
        rows = []
        for c in sorted(C, key=lambda c: -abs(c["r"])):
            p = c["p"]
            rows.append([esc(c["trait"]), esc(c["metric"]), c["n"], ("%+.2f" % c["r"], c["r"]), "%+.2f" % c["rho"] if c["rho"] is not None else "–",
                         (("<0.001" if p < 0.001 else "%.3f" % p) if p is not None else "–", p if p is not None else 9),
                         "<b>likely real</b>" if p is not None and p < 0.01 else ("suggestive" if p is not None and p < 0.05 else "<span class='muted'>no clear link</span>")])
        h.append(table([("Bot setting", "l"), ("Stat", "l"), "n", "r", "ρ", "Approx. p", ("Verdict", "l")], rows))
        h.append(ch.make("Correlation heatmap", lambda: chart_corr_heat(C)))
    h.append(ch.make("Trait vs stat scatter plots (red line = best-fit trend)", lambda: chart_trait_scatter(BG)))
    # classes / roles
    cr = _group_rows(BG, lambda b: b["cls"])
    cr.sort(key=lambda r: -r["n"])
    mets_c = [m for m in BP_METRICS if m[0] in ("kd", "kpm", "dpm", "hpm", "acc", "hsr", "ult10")]
    h.append("<h3>By final class</h3><p class='muted'>Class = the bot's newest class in its history. Few bot-games per class means high uncertainty — n is shown.</p>")
    h.append(table([("Class", "l"), ("Role", "l"), "n"] + [m[1] for m in mets_c] + ["Team win %"],
                   [[esc(r["name"]), esc(r["role"].split(" ")[0]), r["n"]] + _metric_row_cells(r, mets_c) +
                    [("%.0f%%" % r["win"] if r["win"] is not None else "–", r["win"] if r["win"] is not None else -1)] for r in cr]))
    hi_acc = [r["name"] for r in cr if r["acc"] is not None and r["acc"] > 1]
    if hi_acc:
        h.append("<p class='muted'>Classes with pooled accuracy above 100%% (%s) most likely have weapons or tools that register more than one hit per shot.</p>" % esc(", ".join(hi_acc)))
    h.append(ch.make("Class profile", lambda: chart_bot_class(cr)))
    rr = _group_rows(BG, lambda b: b["role"]); rr.sort(key=lambda r: -r["n"])
    h.append("<h3>By role</h3>" + table([("Role", "l"), "n"] + [m[1] for m in mets_c] + ["Team win %"],
             [[esc(r["name"]), r["n"]] + _metric_row_cells(r, mets_c) + [("%.0f%%" % r["win"] if r["win"] is not None else "–", r["win"] if r["win"] is not None else -1)] for r in rr]))
    # ultimates
    users = [b for b in BG if b["ults"] > 0]; non = [b for b in BG if b["ults"] == 0]
    def wr(bs):
        d = [b for b in bs if b["won"] is not None]
        return "%.0f%%" % (100 * sum(b["won"] for b in d) / len(d)) if d else "–"
    h.append("<h3>Ultimates</h3>" + table([("Group", "l"), "Bot-games", "Team win %", "Avg K/D", "Avg damage/min"],
             [["Used at least one ultimate", len(users), wr(users), "%.2f" % avg(b["kd"] for b in users) if users else "–", "%.0f" % avg(b["dpm"] for b in users) if users else "–"],
              ["Used none", len(non), wr(non), "%.2f" % avg(b["kd"] for b in non) if non else "–", "%.0f" % avg(b["dpm"] for b in non) if non else "–"]], sortable=False))
    uc = sorted(((r["name"], r["n"], sum(b["ults"] for b in BG if b["cls"] == r["name"]), r["ult10"]) for r in cr if r["n"] >= 1), key=lambda x: -(x[3] or 0))
    h.append("<p>Ultimate rate by class (per 10 min on the field): " + " · ".join("<b>%s</b> %.2f (%d total, n=%d)" % (esc(n), u or 0, t, k) for n, k, t, u in uc[:8]) + "</p>")
    # winners vs losers
    dec = [b for b in BG if b["won"] is not None]
    wn = [b for b in dec if b["won"]]; ls = [b for b in dec if not b["won"]]
    if wn and ls:
        rows = []
        for mk, mn, f in BP_METRICS:
            a, b_ = agg(wn, mk), agg(ls, mk)
            if a is None or b_ is None: continue
            rows.append([esc(mn), fv(a, f), fv(b_, f), ("%+.0f%%" % (100 * (a - b_) / abs(b_)) if b_ else "–", (a - b_) / abs(b_) if b_ else 0)])
        h.append("<h3>Winning vs losing teams' bots</h3><p class='muted'>Average of each bot's stat, grouped by whether its team won (%d vs %d bot-games). Includes force-ended games, where the winner may not reflect a natural finish.</p>" % (len(wn), len(ls)))
        h.append(table([("Stat", "l"), "Bots on winning teams", "Bots on losing teams", "Difference"], rows, sortable=False))
    # named vs CPU
    nm = [b for b in BG if b["named"]]; cp = [b for b in BG if not b["named"]]
    if nm and cp:
        rows = []
        for lab, bs in (("Named bots (e.g. BrickBot)", nm), ("CPU_n bots", cp)):
            rows.append([esc(lab), len(bs), "%.1f" % avg(b["skill"] for b in bs)] + [fv(agg(bs, mk), f) for mk, _, f in mets_c[:6]])
        h.append("<h3>Named bots vs CPU bots</h3>" + table([("Group", "l"), "Bot-games", "Avg skill"] + [m[1] for m in mets_c[:6]], rows, sortable=False))
    # bots vs humans
    if PG:
        pairs = [("kd", "K/D", "%.2f", lambda p: p["kd"]), ("kpm", "Kills/min", "%.2f", lambda p: p["kpm"]), ("dthpm", "Deaths/min", "%.2f", lambda p: p["deaths"] / max(p["played"] / 60, 1e-9)),
                 ("dpm", "Damage/min", "%.0f", lambda p: p["dpm"]), ("dtpm", "Taken/min", "%.0f", lambda p: p["taken"] / max(p["played"] / 60, 1e-9)),
                 ("hpm", "Healing/min", "%.0f", lambda p: p["heal"] / max(p["played"] / 60, 1e-9)), ("apm", "Assists/min", "%.2f", lambda p: p["apm"])]
        rows = [[esc(mn), fv(avg(fn(p) for p in PG), f), fv(avg(b[mk] for b in BG), f)] for mk, mn, f, fn in pairs]
        h.append("<h3>Bots vs human players</h3><p class='muted'>%d human player-games vs %d bot-games. Humans don't have shot, headshot or ultimate stats in this data yet, so only the shared stats are compared.</p>" % (len(PG), len(BG)))
        h.append(table([("Stat", "l"), "Human players", "Bots"], rows, sortable=False))
    # leaderboards
    def lead(title, key, filt, f):
        top = sorted([b for b in BG if filt(b) and b[key] is not None], key=lambda b: -b[key])[:5]
        if not top: return ""
        return "<div><h4>%s</h4>%s</div>" % (title, table(["#", ("Bot", "l"), ("Class", "l"), "Skill", "Game", "Value"],
                [[i + 1, esc(b["name"]), esc(b["cls"]), "%g" % b["skill"], esc(b["label"]), fv(b[key], f)] for i, b in enumerate(top)], sortable=False))
    h.append("<h3>Leaderboards (best single bot-games)</h3><div class='cols'>" +
             lead("Most kills", "kills", lambda b: True, "%d") + lead("Best K/D (≥3 kills)", "kd", lambda b: b["kills"] >= 3, "%.2f") +
             lead("Accuracy (≥50 shots)", "acc", lambda b: b["shots"] >= 50, "pct") + lead("Headshot rate (≥20 hits)", "hsr", lambda b: b["hits"] >= 20, "pct") +
             lead("Most ultimates", "ults", lambda b: True, "%d") + lead("Damage / min (≥1 min)", "dpm", lambda b: b["played"] >= 60, "%.0f") +
             lead("Most assists", "assists", lambda b: True, "%d") + lead("Most healing", "heal", lambda b: True, "%d") + "</div>")
    # outliers
    outl = []
    for mk, mn, f in BP_METRICS:
        pts = [b for b in BG if b[mk] is not None]
        for o in outliers([b[mk] for b in pts], pts, min_n=8):
            outl.append((abs(o[2]), mn, o[0], o[1], o[2], o[3], f))
    if outl:
        outl.sort(key=lambda x: -x[0])
        h.append("<h3>Unusual bot performances</h3><p class='muted'>Bot-games far from the bot average on a stat (|z| ≥ 2, or beyond the IQR fences). Biggest first, top 25.</p>")
        h.append(table([("Stat", "l"), ("Bot", "l"), ("Class", "l"), "Skill", "Game", "Value", "Z-score"],
                       [[esc(mn), esc(b["name"]), esc(b["cls"]), "%g" % b["skill"], esc(b["label"]), fv(v, f), ("%+.2f" % z, z)] for _, mn, b, v, z, d, f in outl[:25]]))
    # coverage per game
    rows = []
    for r in gs:
        n_ = len(r["bots"]); k = len(r["bgs"])
        rows.append([esc(r["label"]), esc(r["mode"]), esc(r["map"]), esc(r["end_label"]), n_, ("%d%s" % (k, " ⚠" if k < n_ else ""), k), "%.0f%%" % (100 * avg(b["part"] for b in r["bgs"]))])
    h.append("<h3>Coverage by game</h3><p class='muted'>⚠ marks games where some listed bots have no stat block (e.g. they may have left before the end).</p>" +
             table(["Game", ("Mode", "l"), ("Map", "l"), ("Ended by", "l"), "Bots listed", "With stats", "Avg time on field"], rows))
    return "".join(h)


# ------------------------------------------------------------------ assembly
CSS = """
*{box-sizing:border-box}body{font-family:Segoe UI,Arial,sans-serif;max-width:1180px;margin:0 auto;padding:0 16px 40px;color:#222;background:#fff}
h1{margin:20px 0 0}h2{border-bottom:2px solid #ddd;padding-bottom:4px}h3{margin-top:26px}h4{margin:18px 0 6px}
nav{position:sticky;top:0;background:#fff;border-bottom:1px solid #ddd;padding:8px 0;z-index:5;margin-bottom:16px}
nav button{margin-right:4px}button{border:1px solid #bbb;background:#f4f5f7;border-radius:6px;padding:5px 11px;cursor:pointer;font-size:13px}
button:hover{background:#e6e9ee}button.on{background:#357edd;color:#fff;border-color:#357edd}
table{border-collapse:collapse;width:100%;font-size:12.5px;margin:6px 0 14px}th,td{border:1px solid #ddd;padding:4px 7px;text-align:right}
th{background:#f0f2f5;position:sticky;top:0}th.l,td.l{text-align:left}tbody tr:nth-child(even){background:#fafafa}
table.sortable th{cursor:pointer;user-select:none}table.sortable th:hover{background:#e3e8f0}
.win{color:#2e9e5b;font-weight:700}.loss{color:#c0392b;font-weight:700}.muted{color:#777;font-size:12px}.flag{color:#8a5a00;background:#fff3cd;padding:4px 8px;border-radius:4px}
.kpis{display:flex;flex-wrap:wrap;gap:10px;margin:10px 0}.kpi{flex:1 1 140px;border:1px solid #ddd;border-radius:8px;padding:10px 12px;background:#f9fafc}
.kv{font-size:22px;font-weight:700}.kl{font-size:12px;color:#555}.ks{font-size:11px;color:#888}
figure{margin:14px 0}figcaption{font-weight:600;margin-bottom:4px}img{max-width:100%}
.filters{display:flex;flex-wrap:wrap;gap:10px;align-items:center;margin:8px 0}.filters label{font-size:13px}input,select{padding:3px;font-size:13px}
tr.gr{cursor:pointer}tr.gr:hover{background:#eef4ff!important}.detail{text-align:left;padding:6px 10px;background:#fbfcfe}
.detail table{width:auto}.detail td,.detail th{padding:3px 8px}small{margin-left:3px}
.tab{display:none}.tab.on{display:block}.psec{display:none}.psec.on{display:block}
.diffcell{background:#fff3cd}.up{color:#2e9e5b}.dn{color:#c0392b}
.cols{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:14px}.cols table{width:100%}
body{position:relative}#dm{position:absolute;right:16px;top:14px}
body.dark{background:#15181d;color:#e4e6ea}body.dark nav{background:#15181d;border-color:#333}body.dark th{background:#262b33;color:#e4e6ea}
body.dark td,body.dark th{border-color:#363c46}body.dark tbody tr:nth-child(even){background:#1b1f25}body.dark .kpi{background:#1d2128;border-color:#363c46}
body.dark button,body.dark input,body.dark select{background:#262b33;color:#e4e6ea;border-color:#444}body.dark .detail{background:#1b1f25}
body.dark tr.gr:hover{background:#26303f!important}body.dark h2{border-color:#363c46}body.dark a{color:#8ab4f8}body.dark img{background:#fff;border-radius:6px}
body.dark .flag{background:#4a3b0a;color:#ffd66b}body.dark .diffcell{background:#4a3b0a}body.dark .kv,body.dark .kl{color:#e4e6ea}
@media print{#dm,nav,.filters{display:none}.tab,.psec{display:block!important}tr.dr{display:none}}
"""

JS = r"""
(function(){
var $=function(s,r){return (r||document).querySelector(s)},$$=function(s,r){return Array.prototype.slice.call((r||document).querySelectorAll(s))};
function showTab(id,keep){$$('.tab').forEach(function(t){t.classList.toggle('on',t.id==='t-'+id)});$$('nav button').forEach(function(b){b.classList.toggle('on',b.dataset.t===id)});
 if(!keep){try{history.replaceState(null,'','#'+id)}catch(e){}}}
$$('nav button').forEach(function(b){b.onclick=function(){showTab(b.dataset.t)}});
function route(){var h=(location.hash||'#overview').slice(1);var m=/^game-(\d+)$/.exec(h);
 if(m){showTab('games',true);var r=$('tr.gr[data-n="'+m[1]+'"]'),d=$('tr.dr[data-for="'+m[1]+'"]');if(r&&d){r.hidden=false;d.hidden=false;r.scrollIntoView()}return}
 showTab($('#t-'+h)?h:'overview')}
window.addEventListener('hashchange',route);
var dm=$('#dm');function setDark(on){document.body.classList.toggle('dark',on);dm.textContent=on?'Light mode':'Dark mode';try{localStorage.setItem('gr-dark',on?'1':'0')}catch(e){}}
var pref=false;try{pref=localStorage.getItem('gr-dark')==='1'}catch(e){}setDark(pref);dm.onclick=function(){setDark(!document.body.classList.contains('dark'))};
function showPlayer(p){$$('.psec').forEach(function(s){s.classList.toggle('on',p!==''&&s.dataset.p===p)});$$('.pbtn').forEach(function(b){b.classList.toggle('on',b.dataset.p===p&&p!=='')});}
$$('.pbtn').forEach(function(b){b.onclick=function(){showPlayer(b.dataset.p)}});
$$('.plink').forEach(function(a){a.onclick=function(e){e.preventDefault();showPlayer(a.dataset.p);var s=$('.psec.on');if(s)s.scrollIntoView({behavior:'smooth'})}});
var first=$('.pbtn');if(first&&$$('.pbtn').length<=3)showPlayer(first.dataset.p);
/* sorting */
function cellv(td){var v=td.dataset.s!==undefined?td.dataset.s:td.textContent.trim();var n=parseFloat(v.replace(/[,%]/g,''));return isNaN(n)||!/^[-+]?[\d.,]+%?$/.test(v.trim())?v.toLowerCase():n}
$$('table.sortable').forEach(function(t){var ex=t.classList.contains('ex');
 $$('th',t).forEach(function(th,i){th.onclick=function(){var dir=th.dataset.d==='a'?'d':'a';$$('th',t).forEach(function(x){delete x.dataset.d});th.dataset.d=dir;
  var tb=t.tBodies[0];var rows=$$(ex?'tr.gr':'tr',tb);
  rows.sort(function(a,b){var x=cellv(a.cells[i]),y=cellv(b.cells[i]);var c=(typeof x==='number'&&typeof y==='number')?x-y:String(x).localeCompare(String(y));return dir==='a'?c:-c});
  rows.forEach(function(r){tb.appendChild(r);if(ex){var d=$('tr.dr[data-for="'+r.dataset.n+'"]',tb);if(d)tb.appendChild(d)}})}})});
/* explorer */
function filt(){var q=($('#f-q').value||'').toLowerCase(),p=$('#f-p').value,m=$('#f-m').value,g=$('#f-g').value,r=$('#f-r').value,w=$('#f-w').value,sf=$('#f-s')?$('#f-s').value:'',ef=$('#f-e').value,sv=$('#f-sv')?$('#f-sv').value:'',vv=$('#f-ver')?$('#f-ver').value:'',l=parseFloat($('#f-len').value)||0,o=$('#f-o').checked,c=0;
 $$('tr.gr').forEach(function(tr){var ok=(!q||tr.dataset.q.indexOf(q)>=0)&&(!p||tr.dataset.players.split('|').indexOf(p)>=0)&&(!m||tr.dataset.map===m)&&(!g||tr.dataset.mode===g)&&(!w||tr.dataset.w===w)&&(!sf||tr.dataset.src===sf)&&(!ef||tr.dataset.end===ef)&&(!sv||tr.dataset.srv===sv)&&(!vv||tr.dataset.ver===vv)&&(parseFloat(tr.dataset.len)>=l)&&(!o||tr.dataset.flag==='1');
  if(ok&&r){var key=(p?p:'')+':'+r;ok=p?tr.dataset.res.split(' ').indexOf(p+':'+r)>=0:(' '+tr.dataset.res).indexOf(':'+r)>=0}
  tr.hidden=!ok;var d=$('tr.dr[data-for="'+tr.dataset.n+'"]');if(d&&!ok)d.hidden=true;if(ok)c++});
 $('#f-count').textContent=c+' of '+$$('tr.gr').length+' games shown'}
if($('#f-q')){['f-q','f-p','f-m','f-g','f-r','f-w','f-s','f-e','f-sv','f-ver','f-len','f-o'].forEach(function(id){var e=$('#'+id);if(e){e.oninput=filt;e.onchange=filt}});
 $('#f-x').onclick=function(){['f-q','f-len'].forEach(function(i){$('#'+i).value=''});['f-p','f-m','f-g','f-r','f-w','f-s','f-e','f-sv','f-ver'].forEach(function(i){if($('#'+i))$('#'+i).value=''});$('#f-o').checked=false;filt()};filt();
 $$('tr.gr').forEach(function(tr){tr.onclick=function(){var d=$('tr.dr[data-for="'+tr.dataset.n+'"]');d.hidden=!d.hidden}})}
var cb=$('#f-csv');if(cb)cb.onclick=function(){var rows=[$$('table.ex thead th').map(function(t){return t.textContent})];$$('tr.gr').forEach(function(tr){if(!tr.hidden)rows.push($$('td',tr).map(function(td){return td.textContent.trim()}))});
 var csv=rows.map(function(r){return r.map(function(c){return '"'+c.replace(/"/g,'""')+'"'}).join(',')}).join('\n');var a=document.createElement('a');a.href=URL.createObjectURL(new Blob(['\ufeff'+csv],{type:'text/csv'}));a.download='games_filtered.csv';document.body.appendChild(a);a.click();a.remove()};
/* compare */
var D=window.GAMES||{};
function fmt(v){return typeof v==='number'?(Math.round(v*100)/100).toString():String(v)}
function cmp(){var a=D[$('#c-a').value],b=D[$('#c-b').value];if(!a||!b)return;var only=$('#c-d').checked;var keys=[];Object.keys(a).concat(Object.keys(b)).forEach(function(k){if(keys.indexOf(k)<0)keys.push(k)});
 var h='<table><thead><tr><th class="l">Metric</th><th>Game A</th><th>Game B</th><th>Difference (B − A)</th></tr></thead><tbody>';
 keys.forEach(function(k){var x=a[k],y=b[k];var same=x===y;if(only&&same)return;var d='';if(typeof x==='number'&&typeof y==='number'){var df=y-x;d=(df>0?'+':'')+fmt(df);if(x!==0)d+=' ('+(df>0?'+':'')+Math.round(df/Math.abs(x)*100)+'%)'}
  h+='<tr><td class="l">'+k+'</td><td'+(same?'':' class="diffcell"')+'>'+(x===undefined?'–':fmt(x))+'</td><td'+(same?'':' class="diffcell"')+'>'+(y===undefined?'–':fmt(y))+'</td><td>'+d+'</td></tr>'});
 $('#c-out').innerHTML=h+'</tbody></table>'}
if($('#c-a')){var o=$$('#c-b option');if(o.length>1)$('#c-b').selectedIndex=1;['c-a','c-b','c-d'].forEach(function(i){$('#'+i).onchange=cmp});cmp()}
route();
})();
"""


def build_html(G, PG, S, notes, args, src_names, charts_on, files_info=None):
    ch = Charts(charts_on, notes)
    outl = collect_outliers(G, PG, S)
    flags_by_game, flags_by_pg = defaultdict(list), defaultdict(list)
    for scope, metric, g, who, v, z, d in outl:
        txt = "%s %s (%s) %s than usual (z %+.1f)" % (metric, ("%.2f" % v), scope.split(" (")[0], "higher" if d == "high" else "lower", z)
        flags_by_game[g["n"]].append(txt if who is None else "%s: %s" % (who, txt))
        if who: flags_by_pg[who].append("%s (%s, %s): %s %.2f is %s than their norm (z %+.1f)" % (
            g["label"], g["map"], g["mode"], metric, v, d, z)) if "own average" in scope else None
    findings = build_findings(G, PG, S)
    title = args.title
    gen = datetime.now().strftime("%Y-%m-%d %H:%M")
    P = ["<!doctype html><html lang='en'><head><meta charset='utf-8'><meta name='viewport' content='width=device-width,initial-scale=1'>",
         "<title>%s</title><style>%s</style></head><body>" % (esc(title), CSS),
         "<button id='dm'>Dark mode</button><h1>%s</h1><div class='muted'>Source: %s · %d games · lengths assume %g ticks/second · generated %s · game_report v%s</div>" % (
             esc(title), esc(src_names[0] if len(src_names) == 1 else "%d files" % len(src_names)), len(G), args.tps, gen, __version__),
         "<nav>" + "".join("<button data-t='%s'>%s</button>" % x for x in (
             ("overview", "Overview"), ("outliers", "Outliers"), ("charts", "Charts"), ("players", "Players"), ("records", "Records"), ("matchups", "Matchups"), ("trends", "Trends"), ("games", "Game explorer"),
             ("compare", "Compare games"), ("bots", "Bots"), ("botperf", "Bot stats"), ("notes", "Data notes"))) + "</nav>"]
    # overview
    secs = [r["secs"] for r in G]
    k = [kpi("Games", len(G)), kpi("Total time", fmt_time(sum(secs)), "median %s" % fmt_time(med(secs))), kpi("Players", len(S)),
         kpi("Maps / modes", "%d / %d" % (len({r["map"] for r in G}), len({r["mode"] for r in G})))]
    P.append("<section class='tab' id='t-overview'><h2>Overview</h2><div class='kpis'>%s</div><h3>Key findings</h3><ul>%s</ul>" % (
        "".join(k), "".join("<li>%s</li>" % esc(x) for x in findings)))
    P.append(ch.make("Winners, maps and modes", lambda: chart_overview(G)))
    mrows = []
    for key in ("mode", "map"):
        grp = defaultdict(list)
        for r in G: grp[r[key]].append(r)
        for kk, rs in sorted(grp.items()):
            mrows.append([key, esc(kk), len(rs), sum(r["winner"] == "red" for r in rs), sum(r["winner"] == "blue" for r in rs), fmt_time(avg(r["secs"] for r in rs)), fmt_time(max(r["secs"] for r in rs))])
    P.append(overview_extra(G, files_info, ch))
    if files_info and len(files_info) > 1:
        P.append("<h3>Source files</h3>" + table([("File", "l"), "Games read", "Duplicates skipped", "Games used", ("Status", "l")],
                 [[esc(f["name"]), f["read"], f["dup"], sum(1 for r in G if r["source"] == f["name"]), esc(f["status"])] for f in files_info]))
    P.append("<h3>Breakdown by mode and map</h3>" + table([("Group", "l"), ("Name", "l"), "Games", "Red wins", "Blue wins", "Avg length", "Longest"], mrows) + "</section>")
    # outliers
    P.append("<section class='tab' id='t-outliers'><h2>Outliers</h2><p class='muted'>Flagged when a value is ≥2 standard deviations from the mean, or outside the 1.5×IQR fences / robust z-score &gt;3.5 and ≥1 SD away. Needs ≥5 data points; small samples are indicative only.</p>")
    if outl:
        rows = [[esc(sc), esc(m), g["label"], esc("%s / %s" % (g["map"], g["mode"])), esc(who or "–"), "%.2f" % v, ("%+.2f" % z, z), esc(d)] for sc, m, g, who, v, z, d in outl]
        P.append(table([("Scope", "l"), ("Metric", "l"), "Game", ("Map / mode", "l"), ("Player", "l"), "Value", "Z-score", ("Direction", "l")], rows))
    else:
        P.append("<p>No outliers found.</p>")
    P.append("</section>")
    # charts
    P.append("<section class='tab' id='t-charts'><h2>Charts</h2>")
    for t, fn in (("Game length", lambda: chart_length(G)), ("Length by mode and map", lambda: chart_length_groups(G))):
        P.append(ch.make(t, fn))
    if PG:
        P.append(ch.make("Every player-game vs the overall average", lambda: chart_heat(sorted(PG, key=lambda r: r["n"]), "All players: game-by-game z-scores")))
    P.append("</section>")
    P.append("<section class='tab' id='t-players'><h2>Players</h2>%s</section>" % players_tab(S, G, PG, ch, flags_by_pg))
    P.append("<section class='tab' id='t-records'><h2>Records</h2>%s</section>" % records_tab(G, PG, S))
    P.append("<section class='tab' id='t-matchups'><h2>Matchups</h2>%s</section>" % matchups_tab(G, PG, ch))
    P.append("<section class='tab' id='t-trends'><h2>Trends</h2>%s</section>" % trends_tab(G, S, ch))
    P.append("<section class='tab' id='t-games'><h2>Game explorer</h2>%s</section>" % explorer(G, PG, flags_by_game, [s["name"] for s in S], [f["name"] for f in (files_info or [])]))
    P.append("<section class='tab' id='t-compare'><h2>Compare games</h2>%s</section>" % compare_tab(G))
    P.append("<section class='tab' id='t-bots'><h2>Bots</h2>%s</section>" % bots_tab(G, ch))
    P.append("<section class='tab' id='t-botperf'><h2>Bot stats</h2>%s</section>" % bot_perf_tab(G, PG, ch))
    nn = sorted(set(notes), key=notes.index)
    P.append("<section class='tab' id='t-notes'><h2>Data notes</h2><p class='muted'>Things the program noticed while reading your file(s). Games with IDs are ordered oldest to newest by game ID; games without IDs keep file order and come first.</p>%s</section>" % (
        "<ul>" + "".join("<li>%s</li>" % esc(x) for x in nn) + "</ul>" if nn else "<p>No issues found.</p>"))
    data = {str(r["n"]): game_metrics(r) for r in G}
    P.append("<script>window.GAMES=%s;</script><script>%s</script></body></html>" % (json.dumps(data).replace("</", "<\\/"), JS))
    return "".join(P)


# ------------------------------------------------------------------- exports
def write_csv(outdir, G, PG):
    import csv
    os.makedirs(outdir, exist_ok=True)
    with open(os.path.join(outdir, "games.csv"), "w", newline="", encoding="utf-8-sig") as f:
        w = csv.writer(f)
        w.writerow(["game", "game_id", "server", "version", "end_reason", "source_file", "map", "mode", "winner", "length_seconds", "bots_red", "bots_blue", "skill_red", "skill_blue", "players"])
        for r in G:
            w.writerow([r["n"], r["gid"] if r["gid"] is not None else "", r["server"], r["version"], r["win_state"], r["source"], r["map"], r["mode"], r["winner"], round(r["secs"], 2), r.get("red_bots", 0), r.get("blue_bots", 0),
                        round(r.get("red_skill", 0), 2), round(r.get("blue_skill", 0), 2), "|".join(p["name"] for p in r["pgs"])])
    with open(os.path.join(outdir, "bot_games.csv"), "w", newline="", encoding="utf-8-sig") as f:
        w = csv.writer(f)
        w.writerow(["game", "game_id", "bot", "bot_id", "team", "won", "skill", "aggression", "cooperativeness", "final_class", "role", "class_switches",
                    "kills", "deaths", "assists", "damage_dealt", "damage_taken", "healing_dealt", "object_kills", "shots_fired", "shots_hit", "headshots",
                    "ults_used", "seconds_played", "accuracy", "headshot_rate", "ults_per_10min", "kd", "kills_per_min", "damage_per_min"])
        for r in G:
            for b in r["bgs"]:
                w.writerow([r["n"], r["gid"] if r["gid"] is not None else "", b["name"], b["id"], b["team"], "" if b["won"] is None else int(b["won"]), b["skill"], b["aggression"],
                            b["cooperativeness"], b["cls"], b["role"], b["swaps"], b["kills"], b["deaths"], b["assists"], b["dmg"], b["taken"], b["heal"], b["objk"], b["shots"],
                            b["hits"], b["hs"], b["ults"], round(b["played"], 1), "" if b["acc"] is None else round(b["acc"], 3), "" if b["hsr"] is None else round(b["hsr"], 3),
                            round(b["ult10"], 2), round(b["kd"], 3), round(b["kpm"], 3), round(b["dpm"], 1)])
    with open(os.path.join(outdir, "player_games.csv"), "w", newline="", encoding="utf-8-sig") as f:
        w = csv.writer(f)
        w.writerow(["game", "game_id", "server", "source_file", "player", "team", "won", "class", "role", "kills", "deaths", "assists", "kda", "kd", "damage_dealt", "damage_taken", "healing_dealt",
                    "healing_received", "object_kills", "seconds_played", "damage_per_min", "kills_per_min", "performance_score"])
        for p in PG:
            w.writerow([p["n"], p["game"]["gid"] if p["game"]["gid"] is not None else "", p["game"]["server"], p["game"]["source"], p["name"], p["team"], "" if p["won"] is None else int(p["won"]), p["clsname"], p["role"], p["kills"], p["deaths"], p["assists"],
                        round(p["kda"], 3), round(p["kd"], 3), p["dmg"], p["taken"], p["heal"], p["healr"], p["objk"], round(p["played"], 1), round(p["dpm"], 1), round(p["kpm"], 2), round(p.get("score", 50), 1)])


# ----------------------------------------------------------------------- main
def _stat_count(g):
    pl = g.get("players") if isinstance(g, dict) and isinstance(g.get("players"), dict) else {}
    return sum(1 for lst in pl.values() if isinstance(lst, list) for p in lst if isinstance(p, dict) and isinstance(p.get("stat"), dict))


def generate(files, args):
    notes, files_info, entries, index = [], [], [], {}
    paths = expand_inputs(files)
    desc_files = []
    for f in paths:
        name = os.path.basename(f)
        if any(fi["name"] == name for fi in files_info):  # same name in different folders
            name = os.path.join(os.path.basename(os.path.dirname(os.path.abspath(f))), name)
        info = dict(name=name, read=0, dup=0, status="OK", current=None, dv=None)
        files_info.append(info)
        try:
            node = read_file(f)
            lst = find_games(node)
        except ReportError as e:
            if args.strict or len(paths) == 1:
                raise
            info["status"] = "skipped: %s" % e
            notes.append("%s was skipped: %s" % (name, e))
            continue
        info["current"] = find_current(node)
        info["dv"] = node.get("DataVersion") if isinstance(node, dict) else None
        if info["dv"] is not None:
            notes.append("%s: written with game data version %s." % (name, info["dv"]))
        if not lst:
            info["status"] = "no games found"
            notes.append("%s contains no games." % name)
        ids = []
        for g in lst:
            info["read"] += 1
            if not isinstance(g, dict):
                entries.append(dict(g=g, name=name, wk=None, gid=None)); continue
            wk = world_key(g.get("world_id"))
            gid = g.get("game_id") if isinstance(g.get("game_id"), int) and not isinstance(g.get("game_id"), bool) else None
            if wk is not None and gid is not None:
                key = ("id", wk, gid); ids.append(gid)
            else:
                key = ("content", json.dumps(g, sort_keys=True, default=str))
            e = dict(g=g, name=name, wk=wk if key[0] == "id" else None, gid=gid if key[0] == "id" else None, key=key)
            if not args.keep_duplicates and key in index and (key[0] == "id" or entries[index[key]]["name"] != name):
                info["dup"] += 1
                old = entries[index[key]]
                if key[0] == "id" and json.dumps(old["g"], sort_keys=True, default=str) != json.dumps(g, sort_keys=True, default=str):
                    keep_new = _stat_count(g) >= _stat_count(old["g"])
                    notes.append("Game #%d appears in %s and %s with different contents; kept the %s version." % (
                        gid, old["name"], name, "newer" if keep_new else "more complete (earlier)"))
                    if keep_new:
                        entries[index[key]] = e
                continue
            index.setdefault(key, len(entries))
            entries.append(e)
        if len(ids) > 1 and all(a > b for a, b in zip(ids, ids[1:])):
            notes.append("%s stores games newest-first; they are re-ordered oldest-to-newest by game ID." % name)
        if info["dup"]:
            notes.append("%s: %d game(s) already present (same server and game ID, or identical content) were skipped (use --keep-duplicates to keep them)." % (name, info["dup"]))
    if not entries:
        raise ReportError("No games were found in the file(s). Is this the right save file?")
    # order: games without IDs first (file order), then ID'd games by server then game ID
    ranks = {}
    for e in entries:
        if e["wk"] is not None: ranks.setdefault(e["wk"], len(ranks))
    noid = [e for e in entries if e["wk"] is None]
    idd = sorted([e for e in entries if e["wk"] is not None], key=lambda e: (ranks[e["wk"]], e["gid"]))
    entries = noid + idd
    # gaps in the ID sequence (per server)
    cur_ids = defaultdict(set)
    for fi in files_info:
        c = fi.get("current")
        if c and world_key(c.get("world_id")) is not None and isinstance(c.get("game_id"), int):
            cur_ids[world_key(c["world_id"])].add(c["game_id"])
    for wk, rk in sorted(ranks.items(), key=lambda kv: kv[1]):
        have = {e["gid"] for e in idd if e["wk"] == wk}
        missing = [x for x in range(min(have), max(have) + 1) if x not in have and x not in cur_ids[wk]]
        if missing:
            shown = ", ".join("#%d" % x for x in missing[:25]) + (" …(%d more)" % (len(missing) - 25) if len(missing) > 25 else "")
            notes.append("Server %s (%s…): %d game ID(s) missing between #%d and #%d: %s. They were not saved, or are in a file you haven't included." % (
                "S%d" % (rk + 1), world_hex(wk)[:8], len(missing), min(have), max(have), shown))
    for fi in files_info:
        c = fi.get("current")
        if c:
            notes.append("%s: game #%s (%s on %s) was still in progress when the file was saved, so it is not counted." % (
                fi["name"], c.get("game_id", "?"), (c.get("gamemode") or {}).get("name", "?") if isinstance(c.get("gamemode"), dict) else "?",
                (c.get("map") or {}).get("name", "?") if isinstance(c.get("map"), dict) else "?"))
    if args.exclude_force_ended:
        before = len(entries)
        entries = [e for e in entries if not (isinstance(e["g"], dict) and e["g"].get("win_state") == "force_ended")]
        notes.append("%d force-ended game(s) were excluded (--exclude-force-ended)." % (before - len(entries)))
        if not entries:
            raise ReportError("Every game was force-ended, so nothing is left to report.")
    items = [(e["g"], e["name"]) for e in entries]
    games = [g for g, _ in items]
    names = [fi["name"] for fi in files_info if fi["status"] == "OK"] or [fi["name"] for fi in files_info]
    class_names = load_class_info(args.class_names)
    G, PG = normalise(games, args.tps, class_names, notes, [n for _, n in items])
    if args.player:
        want = {p.lower() for p in args.player}
        PG = [p for p in PG if p["name"].lower() in want]
        for r in G: r["pgs"] = [p for p in r["pgs"] if p["name"].lower() in want]
        if not PG:
            raise ReportError("None of the requested players were found.")
    if not G:
        raise ReportError("No usable games in the file(s).")
    add_scores(PG)
    by = defaultdict(list)
    for p in PG: by[p["name"]].append(p)
    S = sorted((player_summary(n, r) for n, r in by.items()), key=lambda s: (-s["games"], s["name"]))
    page = build_html(G, PG, S, notes, args, names, not args.no_charts, files_info)
    with open(args.output, "w", encoding="utf-8") as f:
        f.write(page)
    if args.csv:
        write_csv(args.csv, G, PG)
    return G, PG, S


def main(argv=None):
    ap = argparse.ArgumentParser(description="Generate an interactive game-history report (single HTML file).")
    ap.add_argument("files", nargs="*", default=["command_storage.dat"],
                    help="save file(s), folder(s) of .dat files, or wildcards like \"saves/*.dat\"; read in the order given (folders/wildcards: by name)")
    ap.add_argument("--keep-duplicates", action="store_true", help="keep identical games that appear in more than one file")
    ap.add_argument("--exclude-force-ended", action="store_true", help="leave out games whose end reason is force_ended (stopped before a normal finish)")
    ap.add_argument("--strict", action="store_true", help="stop if any file cannot be read (default: skip it and carry on)")
    ap.add_argument("-o", "--output", default="game_report.html")
    ap.add_argument("--tps", type=float, default=20.0, help="ticks per second for lengths (default 20)")
    ap.add_argument("--title", default="Game History Report")
    ap.add_argument("--player", action="append", help="only include this player (repeatable)")
    ap.add_argument("--class-names", help="JSON file mapping class numbers to names, e.g. {\"2\": \"Medic\"}")
    ap.add_argument("--csv", metavar="DIR", help="also export games.csv and player_games.csv into DIR")
    ap.add_argument("--no-charts", action="store_true", help="skip chart images")
    ap.add_argument("--open", action="store_true", help="open the report in your browser when done")
    ap.add_argument("--version", action="version", version="game_report " + __version__)
    args = ap.parse_args(argv)
    if not args.tps > 0:
        ap.error("--tps must be greater than zero")
    try:
        G, PG, S = generate(args.files, args)
    except ReportError as e:
        print("Error: %s" % e, file=sys.stderr)
        return 2
    except Exception as e:  # last resort: never show a raw traceback to end users
        print("Unexpected error: %s: %s\nPlease share this message with the program's author." % (type(e).__name__, e), file=sys.stderr)
        return 1
    print("Report for %d games and %d player(s) written to %s" % (len(G), len(S), args.output))
    if args.open:
        import webbrowser
        webbrowser.open("file://" + os.path.abspath(args.output))
    return 0


if __name__ == "__main__":
    sys.exit(main())
