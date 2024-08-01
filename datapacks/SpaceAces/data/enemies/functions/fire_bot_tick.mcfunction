scoreboard players add @s i 1
execute if score @s i matches 50 run scoreboard players add @e[team=blue,distance=..5] fire 15
execute if score @s i matches 50.. run particle flame ~ ~ ~ 0 0 0 .1 100 normal
execute if score @s i matches 50.. run scoreboard players reset @s i
particle flame ~ ~ ~
execute if entity @e[team=blue,distance=..3] run effect give @s slowness 1 3 true
