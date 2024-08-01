## Ticks as player
# Sets up player
execute store result score @s SelectedItem run data get entity @s SelectedItemSlot
execute as @s[tag=!spawned] at @s run function load:spawn
execute if entity @s[tag=newb] run function tick:player/newb
execute if entity @s[tag=training_0] run function tick:player/training_0
execute if entity @s[tag=training_1] run function tick:player/training_1
execute if entity @s[tag=training_2] run function tick:player/training_2


effect give @s resistance 1000000 4 true

# Branching dependant on teams
execute as @s[team=lobby] at @s run function tick:player/lobby
execute as @s[team=!lobby,team=!spectator] at @s run function tick:player/team/main
execute as @s[team=spectator] at @s run function tick:player/spectator

# clears inventory of players
execute as @s[gamemode=adventure] run function classes:clear_inventory

# prevents console/worm_hole from being triggered in game or as spectator

execute as @s[team=!lobby] run trigger worm_hole add 0
execute as @s[team=!lobby] run trigger console add 0

### Not sure what this does again?
scoreboard players reset @s[scores={j=200..}] j

# makes players in the lobby invulnerable
scoreboard players set @s[x=8,y=200,z=8,distance=..250] invulnerable 100
