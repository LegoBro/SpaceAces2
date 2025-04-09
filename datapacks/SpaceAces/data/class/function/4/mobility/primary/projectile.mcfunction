scoreboard players operation @s damage = class.mobility.primary.damage Numbers
scoreboard players operation @s critMult = class.mobility.primary.critMult Numbers
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.mobility.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.mobility.primary.falloffStart Numbers
scoreboard players operation @s speed = class.mobility.primary.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier
scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -5..5
execute store result storage projectile SpreadY float 0.5 run random value -5..5
function projectile:spread with storage projectile
return 1