item replace entity @s container.0 with minecraft:paper[item_model="pyro/hot_air"]
scoreboard players operation @s damage = class.pyro.primary.damage Numbers
scoreboard players operation @s critMult = class.pyro.primary.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players operation @s falloff = class.pyro.primary.falloff Numbers
scoreboard players operation @s falloffStart = class.pyro.primary.falloffStart Numbers
scoreboard players operation @s speed = class.pyro.primary.speed Numbers
scoreboard players operation @s arcRate = class.pyro.primary.arcRate Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id

scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -10..10
execute store result storage projectile SpreadY float 0.5 run random value -10..10
function projectile:spread with storage projectile
return 1