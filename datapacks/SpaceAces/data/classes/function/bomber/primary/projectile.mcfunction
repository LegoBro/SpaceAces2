item replace entity @s container.0 with minecraft:paper[item_model="soldier/grenade"]
scoreboard players operation @s damage = class.bomber.primary.damage Numbers
scoreboard players operation @s critMult = class.bomber.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.bomber.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.bomber.primary.falloffStart Numbers
scoreboard players operation @s speed = class.bomber.primary.speed Numbers
scoreboard players operation @s arcRate = class.bomber.primary.arcRate Numbers

scoreboard players operation @s j = @s speed
function projectile:ray
return 1