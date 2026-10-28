# Gets the overview of game in ran_games[0]
function dev:benchmark/get/gamemode
function dev:benchmark/get/map

# Winner
tellraw @s [{translate:"dev.benchmark.get.winner"}]
tellraw @s [{nbt:"ran_games[0].winner",storage:"dev:game_queue"}]

# Duration
tellraw @s [{translate:"dev.benchmark.get.length"}]
tellraw @s [{nbt:"ran_games[0].length",storage:"dev:game_queue"}]

function dev:benchmark/get/bots