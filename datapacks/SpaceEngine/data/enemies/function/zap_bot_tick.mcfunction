scoreboard players add @s i 1
execute if score @s i matches 50 run particle minecraft:end_rod ~ ~ ~ 0 0 0 .1 25 normal
execute if score @s i matches 50 run scoreboard players add @e[distance=..3,tag=bot] health 1
execute if score @s i matches 50.. run scoreboard players reset @s i

return 1