## tick for entity health


execute if score @s health > @s maxHealth unless score @s over_heal matches 1.. run function health:over_heal_tick
execute if score @s resist matches 1.. run function class:4/helper/effect/resist
execute if entity @s[scores={invulnerable=1..}] run function class:4/helper/effect/invulnerable

execute if block ~ ~ ~ #projectile:hot_stuff run scoreboard players add @s fire 1
execute if score @s fire matches 1.. run function health:fire_tick
execute if score @s poison matches 1.. run function health:poison_tick

execute if score @s raw_damage matches 10.. run function health:damage
execute if score @s 2xdamage matches 1.. run function health:damage
execute if score @s[tag=!raycast] damage matches 1.. run function health:damage
execute if score @s healing matches 1.. run function health:heal

return 1


