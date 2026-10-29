# Gets map in ran_games[0]

tellraw @s [{translate:"dev.benchmark.get.map"}]

tellraw @s [{nbt:"games[0].map.name",storage:"game_history:games"}]