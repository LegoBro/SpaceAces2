# Game History Report

Turns your `command_storage.dat` into one interactive HTML report (works offline).

## Setup
Python 3.8+ and `pip install matplotlib` (charts; the report still works without it).

## Use
    python game_report.py command_storage.dat
    python game_report.py command_storage.dat -o report.html --open --csv exports/

### Several files at once
    python game_report.py saves/                  (every .dat in a folder, by name)
    python game_report.py "saves/*.dat"           (wildcards work on Windows too)
    python game_report.py jan.dat feb.dat mar.dat (read in the order given)

Games are combined in order (earlier files first) and each game remembers its source file, shown in the
explorer (with a File filter), game details, compare tool and CSV export. Identical games found in more
than one file (e.g. overlapping backups) are counted once; use `--keep-duplicates` to keep them.
A file that can't be read is skipped and listed under Source files / Data notes; use `--strict` to stop instead.

Built-in classes: 1 Scout, 2 Soldier, 3 Sniper, 4 Bomber, 5 Gunner, 6 Healer, 7 Brawler, 8 Mobility, 9 Mechanic, 10 Scientist, 11 Infiltraitor, 12 Pyro, 13 Seeker, 14 Shocksmith, 15 Rocketeer.
Roles: Guardian (tank) = Gunner, Brawler, Mechanic, Pyro, Rocketeer · Sustainer (heal/support) = Healer, Scientist, Shocksmith · Striker (DPS) = the rest.
`--class-names` can rename/re-role them, e.g. {"2": "Trooper", "16": {"name": "New", "role": "guardian"}}.

Options: `--tps 20` (ticks per second for game lengths), `--player NAME` (repeatable),
`--class-names classes.json` (e.g. {"2": "Medic"}), `--title`, `--no-charts`, `--version`.

## New data format (v4)
The program reads the newer save format automatically and still reads older files:
- **Game ID + world ID:** each game is identified by its server (world ID) and game number. The same game found in two files is counted once;
  games from different servers are kept apart (labelled S1#12, S2#12…). Games are ordered oldest to newest by ID (the file stores newest first).
- **Missing games:** gaps in the ID sequence are listed under Data notes. A game that was still running at save time is shown on the Overview but not counted.
- **End reason (`win_state`):** shown everywhere, with a "How games end" table/chart and an "Ended by" filter. `--exclude-force-ended` leaves out games that were stopped early.
- **Version:** per-version comparison appears when more than one game version is present.
- **Assists:** added to player stats, KDA, records, leaderboards, the heatmap, the performance score and CSV exports.
- **Bot class history:** class usage, class switching, and team make-up (roles) vs result on the Bots tab; each bot's class path appears in the game details.

## Bot stats (v5)
Bots can now carry their own stat block (kills, deaths, assists, damage, healing, shots fired/hit, headshots, ultimates used). The **Bot stats** tab shows:
coverage, accuracy / headshot rate / ultimate rate, performance by bot skill, aggression and cooperativeness (with correlations and p-values),
class and role profiles, winners vs losers, named vs CPU bots, bots vs humans, leaderboards, unusual performances and per-game coverage.
`--csv DIR` also writes `bot_games.csv`. Bots named CPU_n are re-rolled every game (same ID, different traits), so they are analysed by trait, not by ID.

## Report tabs
Overview · Outliers · Charts · Players · **Records** (awards, leaderboards) · **Matchups** (red/blue balance with significance test,
bot-skill vs result, class performance, map×mode matrix) · **Trends** (form, cumulative K/D and win %, performance score over time)
· Game explorer · Compare games · Bots · Data notes. Also: dark mode, per-game share links (`report.html#game-5`),
CSV download of the filtered game list.

(Original list:)
Overview · Outliers · Charts · Players (per-player pages) · Game explorer (search/filter/sort, click a row for full breakdown)
· Compare games (side by side) · Bots · Data notes (anything odd found in the file).

## Tests
    python -m unittest test_game_report -v
