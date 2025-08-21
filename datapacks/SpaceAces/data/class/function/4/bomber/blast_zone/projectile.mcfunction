item replace entity @s container.0 with minecraft:paper[item_model="soldier/grenade"]
scoreboard players operation @s damage = class.bomber.primary.damage Numbers
scoreboard players operation @s critMult = class.bomber.primary.critMult Numbers
scoreboard players operation @s falloff = class.bomber.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.bomber.primary.falloffStart Numbers
scoreboard players operation @s speed = class.bomber.primary.speed Numbers
scoreboard players operation @s arcRate = class.bomber.primary.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -25..25
execute store result storage projectile SpreadY float 0.5 run random value -25..25
function projectile:spread with storage projectile
return 1