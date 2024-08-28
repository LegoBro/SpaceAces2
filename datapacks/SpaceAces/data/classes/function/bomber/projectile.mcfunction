scoreboard players set @s damage 10
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11020004},count:1}]}
scoreboard players set @s arcRate 10
scoreboard players set @s speed 20
scoreboard players operation @s j = @s speed
execute unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ run function projectile:ray
return 1