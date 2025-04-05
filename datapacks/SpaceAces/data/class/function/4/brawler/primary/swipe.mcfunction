
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["swipe","raycast"]}
tp @e[type=minecraft:area_effect_cloud,tag=swipe,sort=nearest,limit=1,distance=..1.5] ^ ^ ^ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=swipe,sort=nearest,limit=1,distance=..1.5] at @s run function class:4/brawler/primary/projectile
return 1