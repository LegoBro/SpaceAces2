scoreboard players set @s damage 35
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
execute unless entity @s[scores={Numbers=0..}] positioned ~ ~ ~ run function projectile:ray

return 1