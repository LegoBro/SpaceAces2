summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["rifle","raycast","new"]}
execute anchored eyes run tp @n[type=minecraft:area_effect_cloud,tag=rifle,tag=new,distance=..3] ^ ^ ^ ~ ~
execute as @n[type=minecraft:area_effect_cloud,tag=rifle,tag=new,distance=..3] at @s run function class:4/rocketeer/piercing_dart/projectile
playsound minecraft:gun.rifle player @a ~ ~ ~ 1 2

return 1