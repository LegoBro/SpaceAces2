execute store result score @s xpos run data get entity @s Pos[0] 16
scoreboard players operation @s xpos %= 16 Numbers
execute store result score @s ypos run data get entity @s Pos[1] 16
scoreboard players operation @s ypos %= 16 Numbers
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s zpos %= 16 Numbers

tag @s remove continue
execute if score @s xpos matches 0..15 if score @s ypos matches 2..13 if score @s zpos matches 2..13 run tag @s add continue
execute if score @s xpos matches 2..13 if score @s ypos matches 0..15 if score @s zpos matches 2..13 run tag @s add continue
execute if score @s xpos matches 2..13 if score @s ypos matches 2..13 if score @s zpos matches 0..15 run tag @s add continue

return 1