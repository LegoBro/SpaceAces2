## Cloud Tick
scoreboard players add @s weather.timer 1
execute if score @s weather.speed matches 0 run tp @s ~ ~ ~0.01
execute if score @s weather.speed matches 1 run tp @s ~ ~ ~0.02
execute if score @s weather.speed matches 2 run tp @s ~ ~ ~0.03
execute if score @s weather.speed matches 3 run tp @s ~ ~ ~0.04
execute if score @s weather.speed matches 4 run tp @s ~ ~ ~0.05
execute if score @s weather.speed matches 5 run tp @s ~ ~ ~0.06
execute if score @s weather.speed matches 6 run tp @s ~ ~ ~0.07
execute if score @s weather.speed matches 7 run tp @s ~ ~ ~0.08
execute if score @s weather.speed matches 8 run tp @s ~ ~ ~0.09
execute if score @s weather.speed matches 9.. run tp @s ~ ~ ~0.1

execute if score @s weather.timer > @s weather.lifespan run kill @s