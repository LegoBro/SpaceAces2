clear @s
tp @s 8 195 14 180 0
team join lobby @s
tag @s remove awaiting
tag @s remove ready
function gamemode:update_lobby_players

return 1