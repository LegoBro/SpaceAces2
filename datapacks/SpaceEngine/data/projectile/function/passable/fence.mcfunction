execute store result score @s xpos run data get entity @s Pos[0] 16
scoreboard players operation @s xpos %= 16 Numbers
execute store result score @s ypos run data get entity @s Pos[1] 16
scoreboard players operation @s ypos %= 16 Numbers
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s zpos %= 16 Numbers

tag @s add continue
execute if block ~ ~ ~ #minecraft:fences if score @s xpos matches 6..9 if score @s ypos matches 0..15 if score @s zpos matches 6..9 run tag @s remove continue

execute if block ~ ~ ~ #minecraft:fences[east=true] if score @s xpos matches 10..15 if score @s ypos matches 6..8 if score @s zpos matches 7..8 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[east=true] if score @s xpos matches 10..15 if score @s ypos matches 12..14 if score @s zpos matches 7..8 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[south=true] if score @s xpos matches 7..8 if score @s ypos matches 6..8 if score @s zpos matches 10..15 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[south=true] if score @s xpos matches 7..8 if score @s ypos matches 12..14 if score @s zpos matches 10..15 run tag @s remove continue

execute if block ~ ~ ~ #minecraft:fences[west=true] if score @s xpos matches 0..5 if score @s ypos matches 6..8 if score @s zpos matches 7..8 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[west=true] if score @s xpos matches 0..5 if score @s ypos matches 12..14 if score @s zpos matches 7..8 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[north=true] if score @s xpos matches 7..8 if score @s ypos matches 6..8 if score @s zpos matches 0..5 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[north=true] if score @s xpos matches 7..8 if score @s ypos matches 12..14 if score @s zpos matches 0..5 run tag @s remove continue

return 1