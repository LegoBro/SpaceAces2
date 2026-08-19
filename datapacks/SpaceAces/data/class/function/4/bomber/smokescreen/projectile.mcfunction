scoreboard players operation @s damage = class.bomber.2.damage Numbers
scoreboard players operation @s critMult = class.bomber.2.critMult Numbers
scoreboard players operation @s falloff = class.bomber.2.falloff Numbers
scoreboard players operation @s falloffStart = class.bomber.2.falloffStart Numbers
scoreboard players operation @s speed = class.bomber.2.speed Numbers
scoreboard players operation @s arcRate = class.bomber.2.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
function projectile:ray
return 1