## What a gooey mess
scoreboard players add @s i 1
execute if score @s i matches 200 run kill @s
particle block slime_block ~ ~1.9 ~ 0 0 0 1 10

scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] at @e[team=red,distance=..2.5,sort=nearest] run function classes:scientist/biohazard/blue
execute if entity @s[tag=red] at @e[team=blue,distance=..2.5,sort=nearest] run function classes:scientist/biohazard/red
