
execute unless score class.melee.override Numbers matches 1.. run scoreboard players operation @s damage = class.melee.damage Numbers
execute if score class.melee.override Numbers matches 1.. run scoreboard players operation @s damage = class.melee.override Numbers
scoreboard players operation @s critMult = class.melee.critMult Numbers
scoreboard players operation @s falloff = class.melee.falloff Numbers
scoreboard players operation @s falloffStart = class.melee.falloffStart Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
function projectile:ray
scoreboard players set class.melee.override Numbers 0
return 1
