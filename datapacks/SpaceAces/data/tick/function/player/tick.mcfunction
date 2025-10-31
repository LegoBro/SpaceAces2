## Ticks as player
# Sets up player

function input:tick

execute store result score @s SelectedItem run data get entity @s SelectedItemSlot
execute if entity @s[tag=!spawned] at @s run function load:spawn
execute if entity @s[tag=newb] run function tick:player/newb
execute if entity @s[tag=training_0] run function tick:player/training_0
execute if entity @s[tag=training_1] run function tick:player/training_1
execute if entity @s[tag=training_2] run function tick:player/training_2


effect give @s minecraft:resistance infinite 4 true

# Branching dependant on teams
execute if entity @s[team=lobby] at @s run function tick:player/lobby
execute if entity @s[team=!lobby,team=!spectator] at @s run function tick:player/team/main
execute if entity @s[team=spectator] at @s run function tick:player/spectator

# clears inventory of players
execute if entity @s[gamemode=adventure,tag=!class.show_menu] run function class:clear_inventory
# Reselect class
execute if entity @s[gamemode=adventure,tag=class.show_menu] run function class:select_inventory

# prevents console/worm_hole from being triggered in game or as spectator

execute if entity @s[team=!lobby] run trigger worm_hole add 0
execute if entity @s[team=!lobby] run trigger console add 0

### Not sure what this does again?
scoreboard players reset @s[scores={j=200..}] j

# makes players in the lobby invulnerable
scoreboard players set @s[x=8,y=200,z=8,distance=..250] invulnerable 100

function input:adv_cleanup

return 1