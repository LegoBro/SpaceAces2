scoreboard players operation @s healing = class.healer.primary.healing Numbers
scoreboard players operation @s damage = class.healer.primary.damage Numbers
scoreboard players operation @s critMult = class.healer.primary.critMult Numbers
scoreboard players operation @s falloff = class.healer.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.healer.primary.falloffStart Numbers
scoreboard players operation @s speed = class.healer.primary.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -3..3
execute store result storage projectile SpreadY float 0.5 run random value -3..3
function projectile:spread with storage projectile
return 1
