# Print Red team
tellraw @s [{translate:"dev.benchmark.get.red_bots",color:"red"}]

function dev:benchmark/data/average/skill_reset

data modify storage dev:game_queue_data bots set from storage dev:game_queue ran_games[0].bots.red
function dev:benchmark/get/bots/bot

function dev:benchmark/data/average/skill_show