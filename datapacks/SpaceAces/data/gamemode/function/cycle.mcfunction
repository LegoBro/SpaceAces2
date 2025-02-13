# Cycles the currently selected gamemode (dynamic)
scoreboard players add Gamemode settings 1
execute if score Gamemode settings matches 5.. run scoreboard players set Gamemode settings 0
function gamemode:sign_display
return 1