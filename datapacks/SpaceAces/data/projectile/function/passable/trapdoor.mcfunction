##Y only
execute store result score @s ypos run data get entity @s Pos[1] 16
scoreboard players operation @s ypos %= 16 Numbers
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] if score @s ypos matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] if score @s ypos matches ..13 run tag @s add continue

##X and Z
execute store result score @s xpos run data get entity @s Pos[0] 16
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s xpos %= 16 Numbers
scoreboard players operation @s zpos %= 16 Numbers
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=east] if score @s xpos matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=west] if score @s xpos matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=south] if score @s zpos matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=north] if score @s zpos matches ..13 run tag @s add continue

return 1