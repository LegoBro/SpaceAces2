scoreboard players add @s i 1
effect give @a[team=blue,distance=..2] unluck 10
execute if score @s i matches 200 run kill @s
