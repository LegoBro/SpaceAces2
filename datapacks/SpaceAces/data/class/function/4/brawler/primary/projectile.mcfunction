scoreboard players operation @s damage = class.brawler.primary.damage Numbers
scoreboard players operation @s critMult = class.brawler.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.brawler.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.brawler.primary.falloffStart Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s j = @s speed
function projectile:ray
return 1
