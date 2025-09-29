## Blink ability
tp @s ~ ~ ~
particle minecraft:dust{color:[0.0f,255.0f,0.0f],scale:1.0f} ~ ~1 ~ .5 .5 .5 .1 15
scoreboard players add travel Numbers 1
execute if score travel Numbers matches ..10 positioned ^ ^ ^1 if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run function class:4/mobility/warp/loop

## Damage
tag @s add attacker
scoreboard players operation #damage Numbers = class.mobility.1.damage Numbers
execute positioned ~ ~-1 ~ as @e[distance=..1,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #Class_Start Team run function projectile:boomer/damage_near
tag @s remove attacker

return 1