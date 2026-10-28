# Gets gamemode in ran_games[0]

tellraw @s [{translate:"dev.benchmark.get.gamemode"}]

tellraw @s [{nbt:"ran_games[0].gamemode.name",storage:"dev:game_queue"}]