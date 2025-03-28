
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

execute if score @s ability.2.cooldown >= class.seeker.2.duration Numbers run scoreboard players operation @s ability.2.cooldown = class.seeker.2.duration Numbers

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
execute anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=heavy_shotgun,tag=new,sort=nearest,limit=4,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=heavy_shotgun,tag=new,sort=nearest,limit=4,distance=..3] at @s run function classes:4/seeker/primary/projectile
execute at @s run playsound minecraft:gun.heavy_shotgun hostile @a ~ ~ ~
return 1
