## haha gun go pew pew
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["cannon","raycast"]}
execute if entity @s[team=blue] run tag @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..3] add red
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..3] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute if entity @s[scores={crouching=0}] run tp @e[type=minecraft:area_effect_cloud,tag=cannon,sort=nearest,limit=1,distance=..3] ~ ~1.6 ~ ~ ~
execute if entity @s[scores={crouching=1..}] run tp @e[type=minecraft:area_effect_cloud,tag=cannon,sort=nearest,limit=1,distance=..3] ~ ~1.26 ~ ~ ~
execute store result score @e[type=minecraft:area_effect_cloud,tag=cannon,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[tag=cannon,sort=nearest,limit=1] at @s run function class:gunner/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~

return 1