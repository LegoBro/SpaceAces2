scoreboard players operation @s damage = class.mobility.ultimate.damage Numbers
scoreboard players operation @s falloff = class.mobility.ultimate.falloff Numbers
scoreboard players operation @s falloffStart = class.mobility.ultimate.falloffStart Numbers
scoreboard players operation @s speed = class.mobility.ultimate.speed Numbers
scoreboard players operation @s critMult = class.mobility.ultimate.critMult Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier
scoreboard players operation @s j = @s speed
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

function projectile:ray
return 1