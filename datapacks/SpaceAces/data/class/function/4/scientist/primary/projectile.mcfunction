item replace entity @s container.0 with minecraft:paper[item_model="scientist/grenade"]
scoreboard players operation @s damage = class.scientist.primary.damage Numbers
scoreboard players operation @s critMult = class.scientist.primary.critMult Numbers
scoreboard players operation @s falloff = class.scientist.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.scientist.primary.falloffStart Numbers
scoreboard players operation @s speed = class.scientist.primary.speed Numbers
scoreboard players operation @s arcRate = class.scientist.primary.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed

execute store result storage projectile SpreadX float 0.5 run random value -15..15
execute store result storage projectile SpreadY float 0.5 run random value -15..15
function projectile:spread with storage projectile
return 1