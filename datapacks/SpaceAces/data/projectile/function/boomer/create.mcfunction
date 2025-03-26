## Executed as the attacker, and assumes stats are set up in scoreboard
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["projectile.boomer","raycast"]}
execute unless score @s damageMultiplier matches 0 run scoreboard players operation #damageMultiplier Numbers = @s damageMultiplier
execute as @n[type=minecraft:area_effect_cloud,tag=projectile.boomer,sort=nearest,limit=1,distance=..3] run function projectile:boomer/projectile

return 1