## Blink ability
tp @s ~ ~ ~
particle minecraft:dust{color:[0.0f,1.0f,0.0f],scale:1.0f} ~ ~1 ~ .1 .1 .1 .1 3
scoreboard players add travel Numbers 1

## Damage
tag @s add attacker
scoreboard players operation #damage Numbers = class.mobility.1.damage Numbers
execute positioned ~ ~-1 ~ as @e[distance=..1,tag=hb] unless score @s Team = #Class_Start Team run function projectile:boomer/damage_near
tag @s remove attacker

execute if score travel Numbers <= class.mobility.1.travel_distance Numbers positioned ^ ^ ^0.5 if block ^ ^ ^ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all if block ^-0.25 ^ ^ #projectile:ignore_all if block ^0.25 ^ ^ #projectile:ignore_all if block ^ ^-0.25 ^ #projectile:ignore_all if block ^ ^0.25 ^ #projectile:ignore_all run return run function class:4/mobility/warp/loop

execute store result storage class:mobility end_x float 1 run data get entity @s Pos[0]
execute store result storage class:mobility end_y float 1 run data get entity @s Pos[1]
execute store result storage class:mobility end_z float 1 run data get entity @s Pos[2]

function class:4/mobility/warp/particle with storage class:mobility
return 1