#Curves used in grenades
execute store result score @s arc run data get entity @s Rotation[1] 10
scoreboard players operation @s arc += @s arcRate
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get @s arc
