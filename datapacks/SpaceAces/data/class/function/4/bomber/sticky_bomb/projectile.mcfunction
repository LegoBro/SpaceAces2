item replace entity @s container.0 with minecraft:paper[item_model="class/bomber/sticky"]
scoreboard players operation @s damage = class.bomber.secondary.damage Numbers
scoreboard players operation @s critMult = class.bomber.secondary.critMult Numbers
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.bomber.secondary.falloff Numbers
scoreboard players operation @s falloffStart = class.bomber.secondary.falloffStart Numbers
scoreboard players operation @s speed = class.bomber.secondary.speed Numbers
scoreboard players operation @s arcRate = class.bomber.secondary.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier
scoreboard players operation @s j = @s speed
tag @s remove new
function projectile:ray
return 1