
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["grenade_shot","raycast","red"]}
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..3] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute if entity @s[scores={crouching=0}] run tp @e[type=minecraft:area_effect_cloud,tag=grenade_shot,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:area_effect_cloud,tag=grenade_shot,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:area_effect_cloud,tag=grenade_shot,sort=nearest,limit=1,distance=..3] at @s run function class:3.4/bomber/grenade/projectile

return 1