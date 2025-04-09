scoreboard players operation @s damage = class.infiltraitor.primary.damage Numbers
scoreboard players operation @s critMult = class.infiltraitor.primary.critMult Numbers
scoreboard players operation @s falloff = class.infiltraitor.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.infiltraitor.primary.falloffStart Numbers
scoreboard players operation @s speed = class.infiltraitor.primary.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
function projectile:ray
return 1
