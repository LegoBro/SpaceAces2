#item replace entity @s container.0 with minecraft:paper[item_model="pyro/hot_air"]
scoreboard players operation @s damage = class.mechanic.ultimate.damage Numbers
scoreboard players operation @s critMult = class.mechanic.ultimate.critMult Numbers
scoreboard players operation @s falloff = class.mechanic.ultimate.falloff Numbers
scoreboard players operation @s falloffStart = class.mechanic.ultimate.falloffStart Numbers
scoreboard players operation @s speed = class.mechanic.ultimate.speed Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s damageMultiplier = #damageMultiplier damageMultiplier

execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -30..30
execute store result storage projectile SpreadY float 0.5 run random value -1..1
function projectile:spread with storage projectile
return 1