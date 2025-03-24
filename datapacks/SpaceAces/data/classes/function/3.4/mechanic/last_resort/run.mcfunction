## Handles last resort and mechanic turret health

# Turret Health
scoreboard players reset turretHealth
execute store result score xp Numbers run data get entity @s XpLevel
scoreboard players operation place_id id = @s id
execute as @e[type=minecraft:slime,distance=..500,tag=turret_base] if score @s id = place_id id run scoreboard players operation turretHealth Numbers = @s health
execute unless score turretHealth Numbers = xp Numbers run function classes:3.4/mechanic/last_resort/reload

execute unless score turretHealth Numbers matches 1.. run scoreboard players set @s[scores={reload=1..20}] reload 21

return 1