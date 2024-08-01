## Slowly damages player to remove effect of overheal
scoreboard players add @s fire_tick 1
execute if score @s fire_tick matches 5.. run function health:fire_damage
particle flame ~ ~1.25 ~ 0.2 0.2 0.2 0.01 5
