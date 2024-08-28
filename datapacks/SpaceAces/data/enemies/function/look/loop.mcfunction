execute unless entity @e[distance=..2,team=blue] positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function enemies:look/loop
execute if entity @e[distance=..2,team=blue] run tag @s add canSee
#particle flame ~ ~ ~ 0 0 0 0 1 force

return 1