execute store result score @s xpos run data get entity @s Pos[0] 16
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s zpos %= 16 Numbers
scoreboard players operation @s xpos %= 16 Numbers

##Normal Stairs
execute if block ~ ~ ~ #minecraft:stairs[facing=south] if score @s zpos matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[facing=east] if score @s xpos matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[facing=west] if score @s xpos matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[facing=north] if score @s zpos matches 8.. run tag @s add continue

##Outside Corners
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=west] if score @s zpos matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=east] if score @s zpos matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=north] if score @s xpos matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=south] if score @s xpos matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=west] if score @s zpos matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=east] if score @s zpos matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=north] if score @s xpos matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=south] if score @s xpos matches 8.. run tag @s add continue

##Inside Corners
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=west] unless score @s zpos matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=east] unless score @s zpos matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=north] unless score @s xpos matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=south] unless score @s xpos matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=west] unless score @s zpos matches 8.. run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=east] unless score @s zpos matches 8.. run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=north] unless score @s xpos matches 8.. run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=south] unless score @s xpos matches 8.. run tag @s remove continue

return 1