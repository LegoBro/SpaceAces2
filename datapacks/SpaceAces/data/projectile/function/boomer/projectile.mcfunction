#particle flame ^ ^ ^3
#say flame?
scoreboard players operation @s id = place_id id

scoreboard players operation @s damage = #damage Numbers
scoreboard players operation @s critMult = #critMult Numbers
scoreboard players operation @s falloff = #falloff Numbers
scoreboard players operation @s falloffStart = #falloffStart Numbers
scoreboard players set @s speed 0
scoreboard players operation @s damageMultiplier = #damageMultiplier Numbers
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier

scoreboard players operation @s j = @s speed

function projectile:ray

return 1