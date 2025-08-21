item replace entity @s container.0 with minecraft:paper[item_model="infiltraitor/sticky"]
scoreboard players set @s damage 100
scoreboard players set @s critMult 100
scoreboard players operation @s speed = class.shocksmith.ultimate.speed Numbers
scoreboard players operation @s arcRate = class.shocksmith.ultimate.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
function projectile:ray
tag @s remove new
return 1