scoreboard players set @s damage 15
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players set @s falloff 1
scoreboard players set @s falloffStart 20
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
function projectile:ray
return 1