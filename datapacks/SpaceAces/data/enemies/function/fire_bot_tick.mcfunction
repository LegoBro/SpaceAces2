scoreboard players add @s i 1
execute if score @s i matches 50 run scoreboard players add @e[distance=..5,team=blue] fire 15
execute if score @s i matches 50.. run particle minecraft:flame ~ ~ ~ 0 0 0 .1 100 normal
execute if score @s i matches 50.. run scoreboard players reset @s i
particle minecraft:flame ~ ~ ~
execute if entity @e[distance=..3,team=blue] run effect give @s minecraft:slowness 1 3 true

return 1