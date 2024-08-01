## Blink ability
tp @s ~ ~ ~
particle minecraft:dust 0 255 0 1 ~ ~1 ~ .5 .5 .5 .1 15
scoreboard players add travel Numbers 1
execute if score travel Numbers matches ..10 positioned ^ ^ ^1 if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run function classes:mobility/warp/loop
