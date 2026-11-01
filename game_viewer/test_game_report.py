"""Run with:  python -m unittest test_game_report -v"""
import gzip, os, struct, tempfile, unittest
import game_report as gr


def _s(x): b = x.encode(); return struct.pack(">H", len(b)) + b
def w(name, v):
    if isinstance(v, bool): return b"\x01" + _s(name) + struct.pack(">b", int(v))
    if isinstance(v, int): return b"\x03" + _s(name) + struct.pack(">i", v)
    if isinstance(v, str): return b"\x08" + _s(name) + _s(v)
    if isinstance(v, list):
        body = b"".join(pl(x) for x in v)
        et = 10 if (v and isinstance(v[0], dict)) else (8 if v and isinstance(v[0], str) else (3 if v and isinstance(v[0], int) else 0))
        return b"\x09" + _s(name) + bytes([et]) + struct.pack(">i", len(v)) + body
    if isinstance(v, dict): return b"\x0a" + _s(name) + pl(v)
def pl(v):
    if isinstance(v, dict): return b"".join(w(k, x) for k, x in v.items()) + b"\x00"
    if isinstance(v, str): return _s(v)
    if isinstance(v, int): return struct.pack(">i", v)
    raise TypeError
def nbt(d): return b"\x0a" + _s("") + pl(d)


def game(winner="red", length=2400, with_stats=True, team="red"):
    p = {"name": "Ann", "class": 2}
    if with_stats: p["stat"] = {"player_kills": 5, "deaths": 2, "damage_dealt": 900, "damage_taken": 400, "healing_dealt": 0,
                                "healing_received": 0, "object_kills": 0, "play_time": length}
    g = {"bots": {"red": [{"skill": 5, "name": "CPU_1", "id": 1, "aggression": 2, "team": 2, "cooperativeness": 1}], "blue": []},
         "players": {team: [p]}, "length": length, "gamemode": {"name": "tdm"}, "map": {"name": "ruins"}}
    if winner: g["winner"] = winner
    return g


def wrap(games): return nbt({"data": {"contents": {"games": {"games": games}}}})


class T(unittest.TestCase):
    def setUp(self):
        self.d = tempfile.mkdtemp(); self.out = os.path.join(self.d, "r.html")

    def run_main(self, raw, extra=(), gz=True):
        p = os.path.join(self.d, "x.dat")
        open(p, "wb").write(gzip.compress(raw) if gz else raw)
        return gr.main([p, "-o", self.out, "--no-charts", *extra])

    def test_roundtrip(self):
        self.assertEqual(self.run_main(wrap([game(), game("blue"), game()])), 0)
        h = open(self.out, encoding="utf8").read()
        self.assertIn("Ann", h); self.assertIn("Game explorer", h)

    def test_uncompressed_ok(self):
        self.assertEqual(self.run_main(wrap([game()]), gz=False), 0)

    def test_missing_stats_unknown_winner_zero_length(self):
        gs = [game(with_stats=False), game(winner=None), game(length=0), game()]
        self.assertEqual(self.run_main(wrap(gs)), 0)
        self.assertIn("no stats recorded", open(self.out, encoding="utf8").read())

    def test_duplicate_noted(self):
        self.run_main(wrap([game(), game()]))
        self.assertIn("duplicate", open(self.out, encoding="utf8").read())

    def test_bots_only_and_empty_players(self):
        g = game(); g["players"] = {}
        self.assertEqual(self.run_main(wrap([g])), 0)

    def test_outlier_detection(self):
        o = gr.outliers([1, 2, 2, 3, 2, 2, 40], list("abcdefg"))
        self.assertEqual([x[0] for x in o], ["g"])
        self.assertEqual(gr.outliers([1, 2], ["a", "b"]), [])
        self.assertEqual(gr.outliers([5] * 8, list(range(8))), [])

    def test_bad_inputs_give_friendly_errors(self):
        p = os.path.join(self.d, "e.dat")
        self.assertEqual(gr.main([os.path.join(self.d, "nope.dat"), "-o", self.out]), 2)
        open(p, "wb").write(b""); self.assertEqual(gr.main([p, "-o", self.out]), 2)
        open(p, "wb").write(b"not a save file at all"); self.assertEqual(gr.main([p, "-o", self.out]), 2)
        good = gzip.compress(wrap([game()]))
        open(p, "wb").write(good[:len(good) // 2]); self.assertEqual(gr.main([p, "-o", self.out]), 2)
        raw = wrap([game()])
        open(p, "wb").write(gzip.compress(raw[:len(raw) // 2])); self.assertEqual(gr.main([p, "-o", self.out]), 2)
        open(p, "wb").write(gzip.compress(nbt({"data": {}}))); self.assertEqual(gr.main([p, "-o", self.out]), 2)

    def test_html_escaping(self):
        g = game(); g["players"]["red"][0]["name"] = "<script>x</script>"
        self.run_main(wrap([g, game()]))
        h = open(self.out, encoding="utf8").read()
        self.assertNotIn("<script>x</script>", h)

    def test_csv_and_filters(self):
        self.assertEqual(self.run_main(wrap([game(), game("blue")]), ["--csv", os.path.join(self.d, "c"), "--player", "ann"]), 0)
        self.assertTrue(os.path.exists(os.path.join(self.d, "c", "player_games.csv")))
        self.assertEqual(self.run_main(wrap([game()]), ["--player", "nobody"]), 2)

    def test_charts_do_not_crash(self):
        p = os.path.join(self.d, "x.dat"); open(p, "wb").write(gzip.compress(wrap([game(), game("blue"), game(), game("blue", 900), game(length=60000)])))
        self.assertEqual(gr.main([p, "-o", self.out]), 0)

    def _write(self, name, games):
        p = os.path.join(self.d, name); open(p, "wb").write(gzip.compress(wrap(games))); return p

    def test_multiple_files_folder_and_wildcard(self):
        sub = os.path.join(self.d, "saves"); os.makedirs(sub)
        for n, gs in (("a.dat", [game(), game("blue")]), ("b.dat", [game(length=999), game("blue", 5000)])):
            open(os.path.join(sub, n), "wb").write(gzip.compress(wrap(gs)))
        for args in ([sub], [os.path.join(sub, "*.dat")], [os.path.join(sub, "a.dat"), os.path.join(sub, "b.dat")]):
            self.assertEqual(gr.main(args + ["-o", self.out, "--no-charts"]), 0)
            h = open(self.out, encoding="utf8").read()
            self.assertIn("4 games", h); self.assertIn("a.dat", h); self.assertIn("b.dat", h)

    def test_cross_file_duplicates_skipped_unless_kept(self):
        a = self._write("a.dat", [game(), game("blue")]); b = self._write("b.dat", [game("blue"), game(length=777)])
        gr.main([a, b, "-o", self.out, "--no-charts"])
        self.assertIn("3 games", open(self.out, encoding="utf8").read())
        gr.main([a, b, "-o", self.out, "--no-charts", "--keep-duplicates"])
        self.assertIn("4 games", open(self.out, encoding="utf8").read())

    def test_bad_file_skipped_or_strict(self):
        a = self._write("a.dat", [game()]); bad = os.path.join(self.d, "bad.dat"); open(bad, "wb").write(b"junk")
        self.assertEqual(gr.main([a, bad, "-o", self.out, "--no-charts"]), 0)
        self.assertIn("skipped", open(self.out, encoding="utf8").read())
        self.assertEqual(gr.main([a, bad, "-o", self.out, "--no-charts", "--strict"]), 2)
        self.assertEqual(gr.main([bad, bad, "-o", self.out, "--no-charts"]), 2)
        self.assertEqual(gr.main([os.path.join(self.d, "none*.dat"), "-o", self.out]), 2)
        self.assertEqual(gr.main([self.d + "/empty_folder_x", "-o", self.out]), 2)

    def test_class_roles_default_and_override(self):
        self.assertEqual(gr.DEFAULT_CLASSES["5"], ("Gunner", gr.GUARDIAN))
        self.assertEqual(gr.DEFAULT_CLASSES["14"][1], gr.SUSTAINER)
        self.assertEqual(gr.DEFAULT_CLASSES["13"][1], gr.STRIKER)
        self.assertEqual(len(gr.DEFAULT_CLASSES), 15)
        p = os.path.join(self.d, "cls.json")
        open(p, "w").write('{"2": "Trooper", "99": {"name": "Wizard", "role": "sustainer"}}')
        info = gr.load_class_info(p)
        self.assertEqual(info["2"], ("Trooper", gr.STRIKER)); self.assertEqual(info["99"], ("Wizard", gr.SUSTAINER))
        self.assertEqual(self.run_main(wrap([game(), game("blue")]), ["--class-names", p]), 0)
        self.assertIn("Trooper", open(self.out, encoding="utf8").read())
        open(p, "w").write("not json")
        self.assertEqual(self.run_main(wrap([game()]), ["--class-names", p]), 2)

    def test_unknown_class_id(self):
        g = game(); g["players"]["red"][0]["class"] = 77
        self.assertEqual(self.run_main(wrap([g, game(), game()])), 0)
        self.assertIn("Class 77", open(self.out, encoding="utf8").read())

    # ---------- new-format features
    def _ngame(self, gid, world=(1, 2, 3, 4), win_state="team_elim", length=2400, winner="red", stats=True, assists=2):
        g = game(winner=winner, length=length, with_stats=stats)
        g["world_id"] = list(world); g["game_id"] = gid; g["win_state"] = win_state
        g["version"] = [{"": "Alpha"}, {"": 4}]
        if stats: g["players"]["red"][0]["stat"]["assists"] = assists
        g["bots"]["red"][0]["class_history"] = [3, 11]
        return g

    def _newfile(self, name, games, current=None):
        d = {"data": {"contents": {"games": {"games": games}}}, "DataVersion": 5023}
        if current: d["data"]["contents"]["current"] = {"game": current}
        p = os.path.join(self.d, name)
        with open(p, "wb") as fh: fh.write(gzip.compress(nbt(d)))
        return p

    def _text(self):
        with open(self.out, encoding="utf8") as fh: return fh.read()

    def test_newest_first_reordered_and_labels(self):
        p = self._newfile("n.dat", [self._ngame(5), self._ngame(4), self._ngame(3)])
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts"]), 0)
        h = self._text(); self.assertIn("newest-first", h); self.assertIn("#3", h)
        self.assertLess(h.index("data-n='1'"), h.index("data-n='2'"))

    def test_id_dedupe_across_files_and_conflict(self):
        a = self._newfile("a.dat", [self._ngame(1), self._ngame(2)])
        b = self._newfile("b.dat", [self._ngame(2, length=999), self._ngame(3)])
        self.assertEqual(gr.main([a, b, "-o", self.out, "--no-charts"]), 0)
        h = self._text(); self.assertIn("3 games", h); self.assertIn("different contents", h)

    def test_different_servers_not_deduped(self):
        a = self._newfile("a.dat", [self._ngame(1, world=(1, 1, 1, 1))]); b = self._newfile("b.dat", [self._ngame(1, world=(9, 9, 9, 9))])
        gr.main([a, b, "-o", self.out, "--no-charts"])
        h = self._text(); self.assertIn("2 games", h); self.assertIn("S2#1", h)

    def test_missing_ids_current_game_force_ended_assists(self):
        cur = {"world_id": [1, 2, 3, 4], "game_id": 9, "gamemode": {"name": "payload"}, "map": {"name": "ruins"}, "version": [{"": "Alpha"}, {"": 4}]}
        p = self._newfile("n.dat", [self._ngame(1), self._ngame(2, win_state="force_ended"), self._ngame(5, assists=7)], current=cur)
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts"]), 0)
        h = self._text()
        self.assertIn("missing between #1 and #5: #3, #4", h); self.assertIn("still in progress", h)
        self.assertIn("Force-ended", h); self.assertIn("Most assists", h)
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts", "--exclude-force-ended"]), 0)
        self.assertIn("2 games", self._text())

    def test_bot_class_history_and_unknown_win_state(self):
        g = self._ngame(1, win_state="weird_state"); g["bots"]["red"][0]["class_history"] = [3, 99]
        p = self._newfile("n.dat", [g, self._ngame(2)])
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts"]), 0)
        h = self._text(); self.assertIn("Weird state", h); self.assertIn("Class 99", h)

    def test_old_format_still_works_with_new(self):
        old = self._write("old.dat", [game(), game("blue")])
        new = self._newfile("new.dat", [self._ngame(1), self._ngame(2)])
        self.assertEqual(gr.main([old, new, "-o", self.out, "--no-charts"]), 0)
        self.assertIn("4 games", self._text())

    def test_helpers(self):
        self.assertEqual(gr.version_str([{"": "Alpha"}, {"": 4}]), "Alpha 4"); self.assertEqual(gr.version_str(None), "unknown")
        self.assertEqual(gr.world_hex((1, -1, 0, 255)), "00000001ffffffff00000000000000ff"); self.assertIsNone(gr.world_key("x"))
        self.assertEqual(gr.end_label("team_elim"), "Team eliminated"); self.assertEqual(gr.end_label(""), "Unknown")

    def test_class_history_is_newest_first(self):
        g = self._ngame(1); g["bots"]["red"][0]["class_history"] = [3, 11]   # stored newest-first: started as 11 (Infiltraitor), now 3 (Sniper)
        p = self._newfile("n.dat", [g, self._ngame(2)])
        G, PG, S = gr.generate([p], type("A", (), dict(class_names=None, tps=20.0, player=None, output=self.out, no_charts=True, csv=None,
                                                         strict=False, keep_duplicates=False, exclude_force_ended=False, title="t"))())
        b = [x for x in G[0]["bots"] if x["team"] == "red"][0]
        self.assertEqual(b["hist_names"], ["Infiltraitor", "Sniper"]); self.assertEqual(b["final"], "Sniper"); self.assertEqual(b["swaps"], 1)

    # ---------- bot statistics
    def _botstat_game(self, gid, shots=100, hits=40, skill=5):
        g = self._ngame(gid)
        g["bots"]["red"][0]["stat"] = {"player_kills": 4, "deaths": 2, "assists": 1, "damage_dealt": 800 + 37 * gid, "damage_taken": 500 + (gid % 3) * 40, "healing_dealt": 0,
                                       "healing_received": 0, "object_kills": 0, "play_time": 2400, "shots_fired": shots, "shots_hit": hits, "headshots": 8, "ults_used": 1}
        g["bots"]["red"][0]["skill"] = skill
        return g

    def test_bot_stats_parsed_and_reported(self):
        p = self._newfile("b.dat", [self._botstat_game(i, skill=i) for i in range(1, 11)])
        out = os.path.join(self.d, "csv")
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts", "--csv", out]), 0)
        h = self._text()
        self.assertIn("10 bot-games", h); self.assertIn("Performance by bot skill", h); self.assertIn("Which settings actually change behaviour", h)
        with open(os.path.join(out, "bot_games.csv"), encoding="utf-8-sig") as fh: rows = fh.read().strip().splitlines()
        self.assertEqual(len(rows), 11); self.assertIn("0.4", rows[1])

    def test_bot_stats_absent_and_zero_shots(self):
        p = self._newfile("b.dat", [self._ngame(1), self._ngame(2)])
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts"]), 0)
        self.assertIn("No bot statistics were found", self._text())
        p = self._newfile("c.dat", [self._botstat_game(1, shots=0, hits=0), self._botstat_game(2)])
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts"]), 0)

    def test_bot_stats_with_charts(self):
        p = self._newfile("b.dat", [self._botstat_game(i, shots=50 + i, hits=20 + i, skill=1 + i % 10) for i in range(1, 13)])
        self.assertEqual(gr.main([p, "-o", self.out]), 0)
        self.assertIn("data:image/png", self._text())

    def test_pooled_ratio_and_stats_helpers(self):
        bs = [dict(shots=100, hits=50, hs=5, dmg=500), dict(shots=1, hits=10, hs=0, dmg=10)]
        self.assertAlmostEqual(gr.agg(bs, "acc"), 60 / 101)
        self.assertAlmostEqual(gr.agg(bs, "hsr"), 5 / 60)
        self.assertAlmostEqual(gr.pearson([1, 2, 3, 4], [2, 4, 6, 8]), 1.0); self.assertIsNone(gr.pearson([1, 1, 1], [1, 2, 3]))
        self.assertEqual(gr._ranks([10, 20, 20, 30]), [1.0, 2.5, 2.5, 4.0])
        self.assertLess(gr.corr_p(0.9, 30), 0.001); self.assertIsNone(gr.corr_p(0.5, 3))

    def test_named_bots_and_cpu_identity(self):
        g = self._ngame(1); g["bots"]["red"][0]["name"] = "BrickBot"
        p = self._newfile("n.dat", [g, self._ngame(2)])
        self.assertEqual(gr.main([p, "-o", self.out, "--no-charts"]), 0)
        self.assertIn("Named bots", self._text())


if __name__ == "__main__":
    unittest.main()
