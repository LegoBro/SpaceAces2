scoreboard players operation @s damage = class.soldier.primary.damage Numbers
scoreboard players operation @s critMult = class.soldier.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.soldier.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.soldier.primary.falloffStart Numbers
scoreboard players operation @s speed = class.soldier.primary.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id

scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -3..3
execute store result storage projectile SpreadY float 0.5 run random value -3..3
function projectile:spread with storage projectile
return 1
