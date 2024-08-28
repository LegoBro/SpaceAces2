execute store result score @s ypos run data get entity @s Pos[1] 16
scoreboard players operation @s ypos %= 16 Numbers
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] if score @s ypos matches 8.. run function projectile:passable/stairxz
execute if block ~ ~ ~ #minecraft:stairs[half=top] if score @s ypos matches ..7 run function projectile:passable/stairxz

return 1