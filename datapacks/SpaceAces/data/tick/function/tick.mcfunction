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
execute if score ActiveMode Numbers matches 1.. if score Prestart Numbers matches ..119 run function gamemode:loading_gamemode
execute if score ActiveMode Numbers matches 1.. unless score Prestart Numbers matches ..119 run function gamemode:running

# if player is in training area
execute if entity @a[tag=trainee] run function gamemode:training

# Other console stuff
function gamemode:console/book



# spins the heads
function gamemode:floating_heads





# performs functions for the archive room
function archives:main

return 1