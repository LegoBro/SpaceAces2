execute store result score @s xpos run data get entity @s Pos[0] 16
scoreboard players operation @s xpos %= 16 Numbers
execute store result score @s ypos run data get entity @s Pos[1] 16
scoreboard players operation @s ypos %= 16 Numbers
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s zpos %= 16 Numbers

tag @s add continue
execute if block ~ ~ ~ #minecraft:walls if score @s xpos matches 5..10 if score @s ypos matches 0..13 if score @s zpos matches 5..10 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[up=true] if score @s xpos matches 4..11 if score @s ypos matches 0..15 if score @s zpos matches 4..11 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[east=true] if score @s xpos matches 12..15 if score @s ypos matches 0..13 if score @s zpos matches 5..10 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[south=true] if score @s xpos matches 5..10 if score @s ypos matches 0..13 if score @s zpos matches 12..15 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[west=true] if score @s xpos matches 0..3 if score @s ypos matches 0..13 if score @s zpos matches 5..10 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[north=true] if score @s xpos matches 5..10 if score @s ypos matches 0..13 if score @s zpos matches 0..3 run tag @s remove continue
