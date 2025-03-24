## Blink ability
tp @s ~ ~ ~
particle minecraft:dust{color:[0.0f,255.0f,0.0f],scale:1.0f} ~ ~1 ~ .5 .5 .5 .1 15
scoreboard players add travel Numbers 1
execute if score travel Numbers matches ..10 positioned ^ ^ ^1 if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run function classes:3.4/mobility/warp/loop

return 1