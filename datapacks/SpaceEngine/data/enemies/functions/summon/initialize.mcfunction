execute as @s store result score @s id run data get entity @s UUID[3] 1
scoreboard players operation @s health = bot_base_health Numbers
scoreboard players operation @s[tag=boss] health *= 5 Numbers
scoreboard players operation @s[tag=armored] health *= 2 Numbers
scoreboard players operation @s[tag=weak] health /= 2 Numbers
tag @s remove init
say @s
