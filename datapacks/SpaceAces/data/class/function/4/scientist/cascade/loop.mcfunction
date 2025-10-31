
particle minecraft:copper_fire_flame ~ ~1 ~ 0.01 0.01 0.01 0 1
execute unless entity @n[tag=los_pass,distance=..0.1] facing entity @n[tag=los_pass] feet positioned ^ ^ ^0.1 run return run function class:4/scientist/cascade/loop

particle minecraft:copper_fire_flame ~ ~1 ~ 0 1 0 0 25 normal
tp @s ~ ~ ~ ~ ~
