scoreboard players add @s i 1
effect give @a[distance=..2,team=blue] minecraft:unluck 10
execute if score @s i matches 200 run kill @s

return 1