## If success, charge player
# Deny teammates
scoreboard players operation place_team Team = @s Team
execute as @n[tag=hb,distance=..5] if score @s Team = place_team Team run return fail
# Hit
scoreboard players operation place_id id = @s id
execute as @e[type=#projectile:players,tag=hb] if score place_id id = @s id run function class:4/shocksmith/primary/steal