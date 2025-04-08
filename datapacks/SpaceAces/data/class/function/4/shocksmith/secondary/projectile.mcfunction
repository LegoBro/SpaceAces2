item replace entity @s container.0 with minecraft:paper[item_model="shocksmith/grenade"]
scoreboard players operation @s damage = class.shocksmith.secondary.damage Numbers
scoreboard players operation @s critMult = class.shocksmith.secondary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.shocksmith.secondary.falloff Numbers
scoreboard players operation @s falloffStart = class.shocksmith.secondary.falloffStart Numbers
scoreboard players operation @s speed = class.shocksmith.secondary.speed Numbers
scoreboard players operation @s arcRate = class.shocksmith.secondary.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id

scoreboard players operation @s j = @s speed
function projectile:ray
return 1