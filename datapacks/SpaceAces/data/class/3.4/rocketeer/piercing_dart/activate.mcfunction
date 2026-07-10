summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:take"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["dart","raycast"]}
execute if entity @s[team=blue] run tag @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..3] add red
tp @e[type=minecraft:area_effect_cloud,tag=dart,sort=nearest,limit=1,distance=..3] ~ ~1.6 ~ ~ ~
execute store result score @e[type=minecraft:area_effect_cloud,tag=dart,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:area_effect_cloud,tag=dart,sort=nearest,limit=1,distance=..3] at @s run function class:3.4/rocketeer/piercing_dart/projectile
playsound minecraft:gun.rifle player @a ~ ~ ~ 1 2

return 1