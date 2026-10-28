# Loads next game, if there is one

execute unless data storage dev:game_queue games[0] run return 0

data modify storage space_aces:selected_gamemode gamemode set from storage dev:game_queue games[0].gamemode
data modify storage space_aces:selected_map map set from storage dev:game_queue games[0].map

function gamemode:force_start