## tick for entity health
execute if block ~ ~ ~ #projectile:hot_stuff run scoreboard players add @s fire 1
execute if score @s fire matches 1.. run function health:fire_tick
scoreboard players add @s[nbt={ActiveEffects:[{Id:27b}]}] raw_damage 3

execute if score @s raw_damage matches 10.. run function health:damage
execute if score @s 2xdamage matches 1.. run function health:damage
execute if score @s[tag=!raycast] damage matches 1.. run function health:damage
#execute if score @s[tag=!turret_base] healing matches 1.. run function health:update
