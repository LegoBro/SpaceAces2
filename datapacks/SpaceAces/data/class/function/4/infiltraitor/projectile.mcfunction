scoreboard players set @s damage 50
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier
scoreboard players set @s falloff 1
scoreboard players set @s falloffStart 40
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
function projectile:ray
return 1