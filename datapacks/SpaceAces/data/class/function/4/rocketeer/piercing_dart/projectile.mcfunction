item replace entity @s container.0 with minecraft:paper[item_model="rocketeer/grenade"]
scoreboard players operation @s damage = class.rocketeer.1.damage Numbers
scoreboard players operation @s critMult = class.rocketeer.1.critMult Numbers
scoreboard players operation @s falloff = class.rocketeer.1.falloff Numbers
scoreboard players operation @s falloffStart = class.rocketeer.1.falloffStart Numbers
scoreboard players operation @s speed = class.rocketeer.1.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
function projectile:ray
return 1