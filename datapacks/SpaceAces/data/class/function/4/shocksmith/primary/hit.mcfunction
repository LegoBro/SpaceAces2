## If success, charge player
scoreboard players operation place_id id = @s id
execute as @e[type=#projectile:players,tag=hb] if score place_id id = @s id run function class:4/shocksmith/primary/steal