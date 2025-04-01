scoreboard players operation @s damage = class.scout.primary.damage Numbers
scoreboard players operation @s critMult = class.scout.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.scout.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.scout.primary.falloffStart Numbers
scoreboard players operation @s speed = class.scout.primary.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s j = @s speed
function projectile:ray
return 1