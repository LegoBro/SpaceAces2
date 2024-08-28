
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast"]}
execute if entity @s[team=blue] run tag @e[type=minecraft:area_effect_cloud,sort=nearest,limit=4] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:area_effect_cloud,sort=nearest,limit=4] add red
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:area_effect_cloud,sort=nearest,limit=4] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute if entity @s[scores={crouching=0}] run tp @e[tag=heavy_shotgun,sort=nearest,limit=4] ~ ~1.6 ~ ~ ~
execute if entity @s[scores={crouching=1..}] run tp @e[tag=heavy_shotgun,sort=nearest,limit=4] ~ ~1.26 ~ ~ ~
execute store result score @e[tag=heavy_shotgun,sort=nearest,limit=4] id run scoreboard players get @s id
execute as @e[tag=heavy_shotgun,sort=nearest,limit=4] at @s run function classes:seeker/projectile
execute at @s run playsound minecraft:gun.heavy_shotgun hostile @a ~ ~ ~
return 1