scoreboard players set @s damage 25
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11080004},count:1}]}
scoreboard players set @s speed 12
scoreboard players set @s arcRate 16
scoreboard players operation @s j = @s speed
execute if entity @s[tag=!warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[tag=warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^1.7 run function projectile:ray

return 1