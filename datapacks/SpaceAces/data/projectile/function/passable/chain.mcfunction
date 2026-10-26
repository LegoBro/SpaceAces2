execute store result score @s xpos run data get entity @s Pos[0] 16
execute store result score @s ypos run data get entity @s Pos[1] 16
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s xpos %= 16 Numbers
scoreboard players operation @s ypos %= 16 Numbers
scoreboard players operation @s zpos %= 16 Numbers

execute if block ~ ~ ~ #minecraft:chains[axis=y] if score @s xpos matches 7..8 if score @s zpos matches 7..8 run return 0

execute if block ~ ~ ~ #minecraft:chains[axis=x] if score @s ypos matches 7..8 if score @s zpos matches 7..8 run return 0

execute if block ~ ~ ~ #minecraft:chains[axis=z] if score @s xpos matches 7..8 if score @s ypos matches 7..8 run return 0

return run tag @s add continue