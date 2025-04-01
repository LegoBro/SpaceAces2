
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["swipe","raycast"]}
execute if entity @s[team=blue] run tag @e[type=minecraft:area_effect_cloud,tag=swipe,sort=nearest,limit=1,distance=..1.5] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:area_effect_cloud,tag=swipe,sort=nearest,limit=1,distance=..1.5] add red
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..1.5] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
tp @e[type=minecraft:area_effect_cloud,tag=swipe,sort=nearest,limit=1,distance=..1.5] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:area_effect_cloud,tag=swipe,sort=nearest,limit=1,distance=..1.5] id run scoreboard players get @s id
execute as @e[type=minecraft:area_effect_cloud,tag=swipe,sort=nearest,limit=1,distance=..1.5] at @s run function class:3.4/brawler/projectile
return 1