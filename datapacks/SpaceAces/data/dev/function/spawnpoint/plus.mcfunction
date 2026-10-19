## Adds one to nearby spawnpoint's data
execute unless entity @s[tag=gamemode.spawnpoint,distance=..5] run return run kill @s

execute store result score #progress Numbers run data get entity @n[tag=gamemode.spawnpoint,distance=..5] data.progress

execute store result entity @n[tag=gamemode.spawnpoint,distance=..5] data.progress int 1 run scoreboard players add #progress Numbers 1

kill @s