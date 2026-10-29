# Print Red team
tellraw @s [{translate:"dev.benchmark.get.bots_red",color:"red"}]

function dev:benchmark/data/average/skill_reset

data modify storage dev:game_queue_data bots set from storage game_history:games games[0].bots.red
function dev:benchmark/get/bots/bot

function dev:benchmark/data/average/skill_show