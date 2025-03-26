## Standby for sticky bomb (sticks to enemies)
scoreboard players operation #Team Numbers = @s Team
execute positioned ~ ~-0.5 ~ as @e[distance=..1.5,tag=!standby_sticky_bomb,sort=nearest,limit=1] unless score @s Team = #Team Numbers run tag @s add sticky_target
execute positioned ~ ~ ~ at @n[tag=sticky_target,distance=..1.5] run tp @s ~ ~.5 ~
tag @e[tag=sticky_target,distance=..2] remove sticky_target

return 1