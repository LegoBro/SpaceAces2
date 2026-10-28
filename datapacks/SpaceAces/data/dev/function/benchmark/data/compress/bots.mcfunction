# Compresses bot data

data remove storage dev:game_queue_data new_bots
data remove storage dev:game_queue_data old_bots
data remove storage dev:game_queue_data bot


data modify storage dev:game_queue_data old_bots set from storage sa_bots:bot_data bots

function dev:benchmark/data/compress/bot

data modify storage dev:game_queue games[0].bots set from storage dev:game_queue_data new_bots