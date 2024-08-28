scoreboard players add @s i 1
execute if score @s i matches 100 run function enemies:poison_trail_summon
execute if score @s i matches 100.. run scoreboard players reset @s i

return 1