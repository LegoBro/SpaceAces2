execute store result score @s ypos run data get entity @s Pos[1] 16
scoreboard players operation @s ypos %= 16 Numbers
execute if block ~ ~ ~ minecraft:snow[layers=1] if score @s ypos matches 2.. run tag @s add continue
execute if block ~ ~ ~ minecraft:snow[layers=2] if score @s ypos matches 4.. run tag @s add continue
execute if block ~ ~ ~ minecraft:snow[layers=3] if score @s ypos matches 6.. run tag @s add continue
execute if block ~ ~ ~ minecraft:snow[layers=4] if score @s ypos matches 8.. run tag @s add continue
execute if block ~ ~ ~ minecraft:snow[layers=5] if score @s ypos matches 10.. run tag @s add continue
execute if block ~ ~ ~ minecraft:snow[layers=6] if score @s ypos matches 12.. run tag @s add continue
execute if block ~ ~ ~ minecraft:snow[layers=7] if score @s ypos matches 14.. run tag @s add continue
execute if block ~ ~ ~ minecraft:snow[layers=8] run tag @s remove continue

return 1