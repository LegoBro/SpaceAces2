## Applies poison 

scoreboard players operation @s poison += class.scientist.primary.poison Numbers
execute as @a if score @s id = place_id id run scoreboard players operation @s game_damage += class.scientist.primary.poison Numbers
execute as @a if score @s id = place_id id run scoreboard players operation @s ultimate_charge += class.scientist.primary.poison Numbers