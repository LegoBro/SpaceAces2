# Print Red team
tellraw @s [{translate:"dev.benchmark.get.blue_bots",color:"blue"}]

function dev:benchmark/data/average/skill_reset

data modify storage dev:game_queue_data bots set from storage dev:game_queue ran_games[0].bots.blue
function dev:benchmark/get/bots/bot

# Get average skill
function dev:benchmark/data/average/skill_show