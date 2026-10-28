# Adds current selected gamemode into the game_queue

function dev:benchmark/game_queue/empty

data modify storage dev:game_queue games append value { gamemode:{}, map:{} }

data modify storage dev:game_queue games[0].gamemode set from storage space_aces:selected_gamemode gamemode
data modify storage dev:game_queue games[0].map set from storage space_aces:selected_map map


function dev:benchmark/game_queue/next_game
schedule function dev:benchmark/running 10s