#Commands ran every tick, all the time

#Entities that run independantly

execute as @a at @s run function tick:player/tick
execute as @e[type=!player,tag=!tick.ignore] at @s run function tick:entity/tick

# Blue
execute if entity @a[tag=in_game] run particle minecraft:angry_villager 5.75 195.06 9.49 .5 .5 .5 .01 2 force

# Red
execute if entity @a[tag=in_game] run particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless entity @a[tag=in_game] run function tick:no_in_game



# Gamemode running/setup
execute if score Mission Numbers matches 1.. run function gamemode:countdown
execute if score ActiveMode Numbers matches 0.. if score Prestart Numbers matches ..119 run function gamemode:loading_gamemode
execute if score ActiveMode Numbers matches 0.. unless score Prestart Numbers matches ..119 run function gamemode:running with storage space_aces:gamemodes

# if player is in training area
execute if entity @a[tag=trainee] run function gamemode:training

# Other console stuff
function gamemode:console/book



# spins the heads
function gamemode:floating_heads





# performs functions for the archive room
function archives:main

# Dev Mode!!!
execute if score dev_mode settings matches 1.. run function dev:tick

## Weather System (mostly clouds for now)
function weather:tick

return 1