scoreboard players operation @s damage = class.seeker.primary.damage Numbers
scoreboard players operation @s critMult = class.seeker.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.seeker.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.seeker.primary.falloffStart Numbers
scoreboard players operation @s speed = class.seeker.primary.speed Numbers
scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -3..3
execute store result storage projectile SpreadY float 0.5 run random value -3..3
function projectile:spread with storage projectile
return 1
