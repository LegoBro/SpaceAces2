execute store result score @s xpos run data get entity @s Pos[0] 16
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s zpos %= 16 Numbers
scoreboard players operation @s xpos %= 16 Numbers

execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=east] if score @s xpos matches 5.. run return run tag @s add continue
execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=west] if score @s xpos matches ..10 run return run tag @s add continue

execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=north] if score @s zpos matches ..10 run return run tag @s add continue
execute if block ~ ~ ~ #minecraft:wooden_shelves[facing=south] if score @s zpos matches 5.. run return run tag @s add continue

return 1
