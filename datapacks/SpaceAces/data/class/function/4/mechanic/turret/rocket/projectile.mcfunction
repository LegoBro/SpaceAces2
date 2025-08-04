scoreboard players operation @s damage = class.mechanic.1.turret.rocket.damage Numbers
scoreboard players operation @s critMult = class.mechanic.1.turret.rocket.critMult Numbers
scoreboard players operation @s falloff = class.mechanic.1.turret.rocket.falloff Numbers
scoreboard players operation @s falloffStart = class.mechanic.1.turret.rocket.falloffStart Numbers

item replace entity @s container.0 with minecraft:paper[item_model="rocketeer/grenade"]
scoreboard players operation @s speed = class.mechanic.1.turret.rocket.speed Numbers
scoreboard players operation @s arcRate = class.mechanic.1.turret.rocket.arcRate Numbers

scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id

scoreboard players operation @s j = @s speed
tag @s remove new
function projectile:ray
return 1

