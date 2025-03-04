## Stores currently selected mode (based on index) from id to other values

$data modify storage space_aces:gamemodes name set from storage space_aces:gamemodes gamemodes[$(index)].name
$data modify storage space_aces:gamemodes min_players set from storage space_aces:gamemodes gamemodes[$(index)].min_players
$data modify storage space_aces:gamemodes map.maps set from storage space_aces:gamemodes gamemodes[$(index)].maps

# Scoreboard storage
execute store result score MinPlay Numbers run data get storage space_aces:gamemodes min_players