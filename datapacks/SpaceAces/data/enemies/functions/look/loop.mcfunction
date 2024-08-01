execute unless entity @e[team=blue,distance=..2] positioned ^ ^ ^1 if block ~ ~ ~ air run function enemies:look/loop
execute if entity @e[team=blue,distance=..2] run tag @s add canSee
#particle flame ~ ~ ~ 0 0 0 0 1 force
