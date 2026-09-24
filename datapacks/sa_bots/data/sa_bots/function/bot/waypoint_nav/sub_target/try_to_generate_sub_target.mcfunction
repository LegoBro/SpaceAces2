#executed by bot entity
#executed at bot's position


#check a random spot somewhere near us

#this random spot will become a sub-target if:
#1) the bot can path directly to it
#2) the spot has a direct path to our movement target

#random point will be somewhere within a hollow square shape surrounding us

#x
execute store result score #random_x sab.var run random value 2..7
execute store result score #random sab.var run random value 0..1
execute if score #random sab.var matches 1 run scoreboard players operation #random_x sab.var *= #-1 sab.var

#z
execute store result score #random_z sab.var run random value 2..7
execute store result score #random sab.var run random value 0..1
execute if score #random sab.var matches 1 run scoreboard players operation #random_z sab.var *= #-1 sab.var


execute if score #random_x sab.var matches -7 positioned ~-7 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches -6 positioned ~-6 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches -5 positioned ~-5 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches -4 positioned ~-4 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches -3 positioned ~-3 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches -2 positioned ~-2 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z

execute if score #random_x sab.var matches 2 positioned ~2 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches 3 positioned ~3 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches 4 positioned ~4 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches 5 positioned ~5 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches 6 positioned ~6 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
execute if score #random_x sab.var matches 7 positioned ~7 ~ ~ run return run function sa_bots:bot/waypoint_nav/sub_target/set_context_z
