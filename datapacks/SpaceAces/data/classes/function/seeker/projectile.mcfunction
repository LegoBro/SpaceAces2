scoreboard players set @s damage 13
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players set @s falloff 1
scoreboard players set @s falloffStart 10
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
scoreboard players set @s Numbers 10
function projectile:spread
return 1