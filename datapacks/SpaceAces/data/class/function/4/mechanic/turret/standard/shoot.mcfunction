summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["rifle","raycast"]}
scoreboard players operation #Class_Start Team = @s Team
scoreboard players operation #Class_Start id = @s id
tp @e[type=minecraft:area_effect_cloud,tag=rifle,sort=nearest,limit=1,distance=..3] ~ ~1.1 ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=rifle,sort=nearest,limit=1,distance=..3] at @s run function class:4/mechanic/turret/standard/projectile
playsound minecraft:gun.rifle player @a ~ ~ ~ 1.0 2.0
return 1