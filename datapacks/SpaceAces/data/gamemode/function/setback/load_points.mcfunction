# Loads points in

execute unless entity @n[type=marker,tag=gamemode.setback.point] run return run schedule function gamemode:setback/load_points 1s

execute as @e[type=marker,tag=gamemode.setback.point] store result score @s gamemode.setback.point run data get entity @s data.gamemode.setback.point

# Center (0) is active
tag @e[tag=gamemode.setback.active_point] remove gamemode.setback.active_point
tag @e[type=marker,tag=gamemode.setback.point,scores={gamemode.setback.point=0}] add gamemode.setback.active_point

kill @e[tag=gamemode.setback.point_visuals]
execute at @e[tag=gamemode.setback.point] run summon block_display ~ ~-0.1 ~ {Glowing:0b,Tags:["gamemode.setback.point_visuals"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-5f,0f,-5f],scale:[10f,0f,10f]},block_state:{id:"minecraft:blue_stained_glass"}}
execute as @n[type=marker,tag=gamemode.setback.active_point] at @s run data modify entity @n[type=block_display,tag=gamemode.setback.point_visuals] Glowing set value true