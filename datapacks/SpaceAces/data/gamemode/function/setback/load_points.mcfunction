# Loads points in

execute unless entity @n[type=marker,tag=gamemode.setback.point] run return run schedule function gamemode:setback/load_points 1s

execute as @e[type=marker,tag=gamemode.setback.point] store result score @s gamemode.setback.point run data get entity @s data.gamemode.setback.point

# Center (0) is active
tag @e[tag=gamemode.setback.active_point] remove gamemode.setback.active_point
tag @e[type=marker,tag=gamemode.setback.point,scores={gamemode.setback.point=0}] add gamemode.setback.active_point