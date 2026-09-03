#scoreboard players operation @s damage = class.rocketeer.2.damage Numbers
#scoreboard players operation @s critMult = class.rocketeer.2.critMult Numbers
#scoreboard players operation @s falloff = class.rocketeer.2.falloff Numbers
#scoreboard players operation @s falloffStart = class.rocketeer.2.falloffStart Numbers
#scoreboard players operation @s speed = class.rocketeer.2.speed Numbers
#scoreboard players operation @s arcRate = class.rocketeer.2.arcRate Numbers
scoreboard players operation @s health = class.rocketeer.2.health Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier



#function class:4/rocketeer/rocket_wall/re_ray
return 1