scoreboard players add @s i 1
execute if score @s i matches ..15 run tp @s ~ ~ ~ ~5 ~5
execute if score @s i matches 16.. run tp @s ~ ~ ~ ~5 ~-5
execute if score @s i matches 45.. run scoreboard players set @s i -15