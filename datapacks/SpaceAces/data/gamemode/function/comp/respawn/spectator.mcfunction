## Player becomes a spectator on death
# Bot deletion
execute if entity @s[type=mannequin] run return run function gamemode:comp/bot/delete
## Normal player
team join spectator @s
gamemode spectator @s
tag @s remove in_game

