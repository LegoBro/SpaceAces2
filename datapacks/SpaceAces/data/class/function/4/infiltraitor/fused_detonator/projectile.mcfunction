item replace entity @s container.0 with minecraft:paper[item_model="infiltraitor/sticky"]
scoreboard players operation @s damage = class.infiltraitor.2.damage Numbers
scoreboard players operation @s critMult = class.infiltraitor.2.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.infiltraitor.2.falloff Numbers
scoreboard players operation @s falloffStart = class.infiltraitor.2.falloffStart Numbers
scoreboard players operation @s speed = class.infiltraitor.2.speed Numbers
scoreboard players operation @s arcRate = class.infiltraitor.2.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s j = @s speed
function projectile:ray
return 1