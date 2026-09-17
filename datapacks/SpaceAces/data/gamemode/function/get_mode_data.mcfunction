## Stores currently selected mode (based on index) from id to other values

$data modify storage space_aces:selected_gamemode gamemode set from storage space_aces:gamemodes gamemodes[$(index)]
#$data modify storage space_aces:selected_gamemode min_players set from storage space_aces:gamemodes gamemodes[$(index)].min_players
#$data modify storage space_aces:selected_gamemode map.maps set from storage space_aces:gamemodes gamemodes[$(index)].maps

# Scoreboard storage
execute store result score MinPlay Numbers run data get storage space_aces:selected_gamemode gamemode.min_players