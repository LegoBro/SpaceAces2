## Checks turrets out
scoreboard players operation place_id id = @s id
execute as @e[type=minecraft:slime,distance=..3,tag=turret_base] if score @s id = place_id id run function class:3.4/mechanic/wrench/apply

return 1