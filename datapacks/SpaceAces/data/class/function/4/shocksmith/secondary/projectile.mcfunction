item replace entity @s container.0 with minecraft:paper[item_model="rocketeer/grenade"]
scoreboard players operation @s damage = class.rocketeer.primary.damage Numbers
scoreboard players operation @s critMult = class.rocketeer.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.rocketeer.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.rocketeer.primary.falloffStart Numbers
scoreboard players operation @s speed = class.rocketeer.primary.speed Numbers
scoreboard players operation @s arcRate = class.rocketeer.primary.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id

scoreboard players operation @s j = @s speed
function projectile:ray
return 1