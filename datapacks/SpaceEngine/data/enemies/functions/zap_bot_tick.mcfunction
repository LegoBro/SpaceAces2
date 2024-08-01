scoreboard players add @s i 1
execute if score @s i matches 50 run particle end_rod ~ ~ ~ 0 0 0 .1 25 normal
execute if score @s i matches 50 run scoreboard players add @e[tag=bot,distance=..3] health 1
execute if score @s i matches 50.. run scoreboard players reset @s i
