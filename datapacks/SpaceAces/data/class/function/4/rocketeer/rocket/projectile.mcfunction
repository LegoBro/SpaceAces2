
scoreboard players set @s damage 30
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier
scoreboard players set @s falloff 20
scoreboard players set @s falloffStart 1
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -1..1
execute store result storage projectile SpreadY float 0.5 run random value -1..1
function projectile:spread with storage projectile

return 1