## Player becomes a spectator on death
# Bot deletion
execute if entity @s[type=mannequin] run return run function gamemode:comp/bot/delete
## Normal player
#team leave @s
tag @s add spectator
tag @s add team_spectator
gamemode spectator @s
#tag @s remove in_game

