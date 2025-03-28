
scoreboard players set @s damage 10
scoreboard players set @s healing 5
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
scoreboard players set @s falloff 2
scoreboard players set @s falloffStart 1
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -3..3
execute store result storage projectile SpreadY float 0.5 run random value -3..3
function projectile:spread with storage projectile

return 1