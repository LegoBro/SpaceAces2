scoreboard players operation @s damage = class.soldier.primary.damage Numbers
scoreboard players operation @s falloff = class.soldier.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.soldier.primary.falloffStart Numbers
scoreboard players operation @s speed = class.soldier.primary.speed Numbers
scoreboard players operation @s j = @s speed
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier

function projectile:ray
return 1