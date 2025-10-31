scoreboard players add @s[scores={poison=1..}] raw_damage 1
scoreboard players add @s[scores={poison=10..}] raw_damage 1
scoreboard players add @s[scores={poison=50..}] raw_damage 2
scoreboard players add @s[scores={poison=100..}] raw_damage 3
execute if score @s raw_damage matches 10.. run scoreboard players remove @s poison 1