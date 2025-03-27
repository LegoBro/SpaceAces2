scoreboard players operation @s damage = class.sniper.2.damage Numbers
scoreboard players operation @s critMult = class.sniper.2.critMult Numbers
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
item replace entity @s container.0 with minecraft:paper[item_model="sniper/mine"]
scoreboard players operation @s speed = class.sniper.2.speed Numbers
scoreboard players operation @s arcRate = class.sniper.2.arcRate Numbers
scoreboard players operation @s j = @s speed
execute if entity @s unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray

return 1