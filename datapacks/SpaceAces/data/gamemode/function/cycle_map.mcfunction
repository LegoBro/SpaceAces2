## Cycles the selected map


execute store result score #MapAmount Numbers run data get storage space_aces:gamemodes map.maps

scoreboard players add Map settings 1
execute if score Map settings >= #MapAmount Numbers run scoreboard players set #MapAmount settings 0
execute store result storage space_aces:gamemodes map.index int 1 run scoreboard players get Map settings
function gamemode:get_map_data with storage space_aces:gamemodes map
function gamemode:map_sign_display with storage space_aces:gamemodes map
return 1