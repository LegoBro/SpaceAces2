execute store result score @s ypos run data get entity @s Pos[1] 16
scoreboard players operation @s ypos %= 16 Numbers
execute unless block ~ ~ ~ #minecraft:slabs[type=top] if score @s ypos matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:slabs[type=top] if score @s ypos matches ..7 run tag @s add continue
