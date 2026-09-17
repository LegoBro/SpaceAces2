## Cycles the selected map


# execute if data storage space_aces:selected_map {map:{gamemodes:["setback"]}}


execute store result score #MapAmount Numbers run data get storage space_aces:selected_gamemode gamemode.maps

scoreboard players add Map settings 1
execute if score Map settings >= #MapAmount Numbers run scoreboard players set Map settings 0
execute store result storage space_aces:selected_gamemode map_index int 1 run scoreboard players get Map settings
function gamemode:get_map_name with storage space_aces:selected_gamemode
function gamemode:get_map_data with storage space_aces:selected_gamemode
function gamemode:map_sign_display with storage space_aces:selected_map map
return 1