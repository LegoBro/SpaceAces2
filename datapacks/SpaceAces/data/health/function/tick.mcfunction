## tick for entity health
execute if block ~ ~ ~ #projectile:hot_stuff run scoreboard players add @s fire 1
execute if score @s fire matches 1.. run function health:fire_tick
execute if score @s poison matches 1.. run function health:poison_tick

execute if score @s raw_damage matches 10.. run function health:damage
execute if score @s 2xdamage matches 1.. run function health:damage
execute if score @s[tag=!raycast] damage matches 1.. run function health:damage
#execute if score @s[tag=!turret_base] healing matches 1.. run function health:update

return 1