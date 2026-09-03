## LOS Raycast
execute if score helper.los.particles Numbers matches 1 run particle minecraft:crit
execute unless block ~ ~ ~ air run return run tag @s remove los_pass
execute positioned ~ ~-1 ~ if entity @s[distance=..1.5] run return 0
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function class:4/helper/los/raycast