#Commands ran every tick, all the time

#Entities that run independantly

execute as @a at @s run function player:tick
execute as @e[type=!player,tag=!tick.ignore] at @s run function tick:entity/tick







# Gamemode running/setup
function gamemode:tick


# Other console stuff
function gamemode:console/book


# performs functions for the archive room
function archives:main

# Dev Mode!!!
execute if score dev_mode settings matches 1.. run function dev:tick

## Weather System (mostly clouds for now)
function weather:tick

return 1