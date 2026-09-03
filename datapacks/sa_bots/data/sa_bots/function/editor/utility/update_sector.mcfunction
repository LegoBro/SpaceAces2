#executed by a bot waypoint Marker


#this gives us a more efficient way to select waypoints of a specific sector

#clear tags
tag @s remove sab.sector.1
tag @s remove sab.sector.2
tag @s remove sab.sector.3
tag @s remove sab.sector.4
tag @s remove sab.sector.5
tag @s remove sab.sector.6
tag @s remove sab.sector.7
tag @s remove sab.sector.8
tag @s remove sab.sector.9
tag @s remove sab.sector.10
tag @s remove sab.sector.11
tag @s remove sab.sector.12
tag @s remove sab.sector.13
tag @s remove sab.sector.14
tag @s remove sab.sector.15
tag @s remove sab.sector.16

#must have data to have sector tag
execute unless data entity @s data.sector run return fail
#=====

#update tags
execute store result score #test sab.var run data get entity @s data.sector
execute if score #test sab.var matches 1 run tag @s add sab.sector.1
execute if score #test sab.var matches 2 run tag @s add sab.sector.2
execute if score #test sab.var matches 3 run tag @s add sab.sector.3
execute if score #test sab.var matches 4 run tag @s add sab.sector.4
execute if score #test sab.var matches 5 run tag @s add sab.sector.5
execute if score #test sab.var matches 6 run tag @s add sab.sector.6
execute if score #test sab.var matches 7 run tag @s add sab.sector.7
execute if score #test sab.var matches 8 run tag @s add sab.sector.8
execute if score #test sab.var matches 9 run tag @s add sab.sector.9
execute if score #test sab.var matches 10 run tag @s add sab.sector.10
execute if score #test sab.var matches 11 run tag @s add sab.sector.11
execute if score #test sab.var matches 12 run tag @s add sab.sector.12
execute if score #test sab.var matches 13 run tag @s add sab.sector.13
execute if score #test sab.var matches 14 run tag @s add sab.sector.14
execute if score #test sab.var matches 15 run tag @s add sab.sector.15
execute if score #test sab.var matches 16 run tag @s add sab.sector.16