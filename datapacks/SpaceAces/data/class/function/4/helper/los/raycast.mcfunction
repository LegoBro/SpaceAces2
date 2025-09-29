## LOS Raycast
execute if score helper.los.particles Numbers matches 1 run particle minecraft:crit
execute unless block ~ ~ ~ air run return run tag @s remove los_pass
execute if block ~ ~ ~ air unless entity @s[distance=..1.5] positioned ^ ^ ^1 run function class:4/helper/los/raycast