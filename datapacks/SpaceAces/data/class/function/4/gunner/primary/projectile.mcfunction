scoreboard players operation @s damage = class.gunner.primary.damage Numbers
scoreboard players operation @s critMult = class.gunner.primary.critMult Numbers
scoreboard players operation @s falloff = class.gunner.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.gunner.primary.falloffStart Numbers
scoreboard players operation @s speed = class.gunner.primary.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -4..4
execute store result storage projectile SpreadY float 0.5 run random value -4..4
function projectile:spread with storage projectile
return 1
