scoreboard players set @s damage 5
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11120004},count:1}]}
scoreboard players set @s arcRate -5
scoreboard players set @s speed 24
scoreboard players operation @s j = @s speed
scoreboard players set @s Numbers 5
function projectile:spread
execute unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ run function projectile:ray
return 1