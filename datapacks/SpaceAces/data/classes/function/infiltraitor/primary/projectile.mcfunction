scoreboard players operation @s damage = class.infiltraitor.primary.damage Numbers
scoreboard players operation @s critMult = class.infiltraitor.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.infiltraitor.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.infiltraitor.primary.falloffStart Numbers
scoreboard players operation @s speed = class.infiltraitor.primary.speed Numbers
scoreboard players operation @s j = @s speed
function projectile:spread with storage projectile
return 1
