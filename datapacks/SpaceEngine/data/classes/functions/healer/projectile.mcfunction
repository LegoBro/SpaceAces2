scoreboard players set @s damage 7
execute as @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players set @s falloff 1
scoreboard players set @s falloffStart 20
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
scoreboard players set @s healing 10
function projectile:ray