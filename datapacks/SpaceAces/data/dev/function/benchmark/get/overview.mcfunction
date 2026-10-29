# Gets the overview of game in ran_games[0]
function dev:benchmark/get/gamemode
function dev:benchmark/get/map

# Winner
tellraw @s [{translate:"dev.benchmark.get.winner"}]
tellraw @s [{nbt:"games[0].winner",storage:"game_history:games"}]

# Duration
tellraw @s [{translate:"dev.benchmark.get.length"}]
tellraw @s [{nbt:"games[0].length",storage:"game_history:games"}]

function dev:benchmark/get/players

function dev:benchmark/get/bots