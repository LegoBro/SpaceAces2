## Charges power boots when holding sneak
scoreboard players add @s passive.cooldown 1
execute if score @s passive.cooldown matches ..5 run effect give @s jump_boost 1 0 true
execute if score @s passive.cooldown matches 6..10 run effect give @s jump_boost 1 1 true
execute if score @s passive.cooldown matches 11..15 run effect give @s jump_boost 1 2 true
execute if score @s passive.cooldown matches 16..20 run effect give @s jump_boost 1 3 true
execute if score @s passive.cooldown matches 21..25 run effect give @s jump_boost 1 4 true
execute if score @s passive.cooldown matches 26.. run effect give @s jump_boost 1 5 true