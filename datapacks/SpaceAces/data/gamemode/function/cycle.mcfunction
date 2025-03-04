# Cycles the currently selected gamemode (dynamic)

execute store result score #GamemodeAmount Numbers run data get storage space_aces:gamemodes gamemodes

scoreboard players add Gamemode settings 1
execute if score Gamemode settings >= #GamemodeAmount Numbers run scoreboard players set Gamemode settings 0
execute store result storage space_aces:gamemodes index int 1 run scoreboard players get Gamemode settings
function gamemode:get_mode_data with storage space_aces:gamemodes
function gamemode:sign_display with storage space_aces:gamemodes
return 1