## Standby for sticky bomb (sticks to enemies)
scoreboard players operation #Team Numbers = @s Team
execute as @n[distance=..2.5,tag=!standby_sticky_bomb,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #Team Numbers run tag @s add sticky_target
execute if entity @n[tag=sticky_target,distance=..1] run tag @s add stuck

execute if entity @s[tag=headshot_fix] positioned ~ ~-1 ~ if entity @n[tag=sticky_target,distance=..1.5] run tag @s add stuck
tag @s remove headshot_fix

execute if entity @s[tag=stuck] at @n[tag=sticky_target] run tp @s ~ ~.75 ~
tag @e[tag=sticky_target,distance=..2.5] remove sticky_target

return 1