scoreboard players set @s damage 25
item replace entity @s container.0 with minecraft:paper[item_model="class/mobility/grenade"]
scoreboard players set @s speed 12
scoreboard players set @s arcRate 16
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
execute positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray

return 1