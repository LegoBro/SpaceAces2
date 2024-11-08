scoreboard players set @s damage 15
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players set @s falloff 2
scoreboard players set @s falloffStart 15
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -5..5
execute store result storage projectile SpreadY float 0.5 run random value -5..5
function projectile:spread with storage projectile
return 1