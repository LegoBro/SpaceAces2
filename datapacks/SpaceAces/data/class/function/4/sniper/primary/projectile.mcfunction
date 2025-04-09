scoreboard players operation @s damage = class.sniper.primary.damage Numbers
scoreboard players operation @s falloff = class.sniper.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.sniper.primary.falloffStart Numbers
scoreboard players operation @s speed = class.sniper.primary.speed Numbers
scoreboard players operation @s critMult = class.sniper.primary.critMult Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier
scoreboard players operation @s j = @s speed
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

function projectile:ray
return 1