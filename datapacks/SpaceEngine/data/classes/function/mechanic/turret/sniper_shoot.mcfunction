summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_pistol","raycast"]}
execute if entity @s[team=blue] run tag @e[type=minecraft:area_effect_cloud,tag=heavy_pistol,sort=nearest,limit=1] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:area_effect_cloud,tag=heavy_pistol,sort=nearest,limit=1] add red
execute store result score @e[tag=heavy_pistol,sort=nearest,limit=1] id run scoreboard players get @s id
tp @e[tag=heavy_pistol,sort=nearest,limit=1] ~ ~1.1 ~ ~ ~
execute as @e[tag=heavy_pistol,sort=nearest,limit=1] at @s run function classes:infiltraitor/projectile
playsound minecraft:gun.plasma player @a ~ ~ ~ 1.0 2.0

return 1