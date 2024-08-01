## Checks turrets out
scoreboard players operation place_id id = @s id
execute as @e[type=slime,tag=turret_base,distance=..3] if score @s id = place_id id run function classes:mechanic/wrench/apply
