# Picks which mode this player is in

# Player is in lobby
execute if entity @s[team=lobby] at @s run return run function player:lobby/tick

# Player is playing (not necessarily in game, just is a class)
execute if entity @s[team=!lobby,tag=!spectator] at @s run return run function class:4/player

# Player is spectating
execute if entity @s[tag=spectator] at @s run return run function player:spectator/tick