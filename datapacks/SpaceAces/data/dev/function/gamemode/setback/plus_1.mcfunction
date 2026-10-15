# +1 to point
execute unless entity @n[type=marker,tag=gamemode.setback.point,distance=..5] run return run kill @s
execute store result score #point_value Numbers run data get entity @n[type=marker,tag=gamemode.setback.point] data.gamemode.setback.point 1
execute store result entity @n[type=marker,tag=gamemode.setback.point] data.gamemode.setback.point int 1 run scoreboard players add #point_value Numbers 1
kill @s