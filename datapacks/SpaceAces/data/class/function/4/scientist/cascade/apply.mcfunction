scoreboard players operation @s poison *= class.scientist.1.damage_mult Numbers
scoreboard players operation @s poison /= 100 Numbers

scoreboard players operation @s damage += @s poison
scoreboard players operation poison Numbers = @s poison
execute as @a if score @s id = place_id id run scoreboard players operation @s game_damage += poison Numbers
scoreboard players set @s poison 0
effect give @s slowness 2 1 true