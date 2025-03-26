item replace entity @s container.0 with minecraft:paper[item_model="bomber/sticky"]
scoreboard players operation @s damage = class.bomber.secondary.damage Numbers
scoreboard players operation @s critMult = class.bomber.secondary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.bomber.secondary.falloff Numbers
scoreboard players operation @s falloffStart = class.bomber.secondary.falloffStart Numbers
scoreboard players operation @s speed = class.bomber.secondary.speed Numbers
scoreboard players operation @s arcRate = class.bomber.secondary.arcRate Numbers
scoreboard players operation @s j = @s speed
function projectile:ray
return 1