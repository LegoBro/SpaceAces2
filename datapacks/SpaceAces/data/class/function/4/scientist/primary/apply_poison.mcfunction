## Applies poison 

scoreboard players operation @s poison += class.scientist.primary.poison Numbers
execute as @e[type=#projectile:players,tag=hb] if score @s id = place_id id run scoreboard players operation @s stat.game.damage_dealt += class.scientist.primary.poison Numbers
execute as @e[type=#projectile:players,tag=hb] if score @s id = place_id id run scoreboard players operation @s ultimate_charge += class.scientist.primary.poison Numbers