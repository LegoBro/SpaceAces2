execute store result score @s xpos run data get entity @s Pos[0] 16
scoreboard players operation @s xpos %= 16 Numbers
execute if block ~ ~ ~ #minecraft:doors[open=false,facing=east] if score @s xpos matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=south,hinge=right] if score @s xpos matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=north,hinge=left] if score @s xpos matches 4.. run tag @s add continue

execute if block ~ ~ ~ #minecraft:doors[open=false,facing=west] if score @s xpos matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=south,hinge=left] if score @s xpos matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=north,hinge=right] if score @s xpos matches ..13 run tag @s add continue

execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s zpos %= 16 Numbers
execute if block ~ ~ ~ #minecraft:doors[open=false,facing=south] if score @s zpos matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=east,hinge=left] if score @s zpos matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=west,hinge=right] if score @s zpos matches 4.. run tag @s add continue

execute if block ~ ~ ~ #minecraft:doors[open=false,facing=north] if score @s zpos matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=east,hinge=right] if score @s zpos matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=west,hinge=left] if score @s zpos matches ..13 run tag @s add continue
