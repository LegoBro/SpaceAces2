scoreboard players set @s damage 10
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
item replace entity @s container.0 with minecraft:paper[custom_model_data=11150004]
scoreboard players set @s arcRate 0
scoreboard players set @s speed 16
scoreboard players operation @s j = @s speed
execute unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ run function projectile:ray
return 1