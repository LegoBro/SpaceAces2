# Adds next gamemode in cycle to the queue

function gamemode:cycle_map
data modify storage dev:game_queue games append value { gamemode:{}, map:{} }

data modify storage dev:game_queue games[-1].gamemode set from storage space_aces:selected_gamemode gamemode
data modify storage dev:game_queue games[-1].map set from storage space_aces:selected_map map