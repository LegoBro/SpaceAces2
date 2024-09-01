# Cycles the currently selected gamemode (dynamic)
scoreboard players add Gamemode Numbers 1
execute if score Gamemode Numbers matches 5.. run scoreboard players set Gamemode Numbers 0
function gamemode:sign_display
return 1