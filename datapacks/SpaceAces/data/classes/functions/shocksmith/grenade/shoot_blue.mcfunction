## Blue
effect give @a[team=red,distance=..3] hunger 5 5
effect give @a[team=blue,distance=..3] saturation 1 0

##
summon area_effect_cloud ~ ~ ~ {Particle:"dolphin",ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0f,Age:0,Tags:["shock_grenade_shot","raycast","blue"]}
execute if entity @s[nbt={ActiveEffects:[{Id:26b}]}] store result score @e[type=area_effect_cloud,limit=1,sort=nearest] damageMultiplier run data get entity @s ActiveEffects[{Id:26b}].Amplifier
execute if entity @s run tp @e[tag=shock_grenade_shot,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute store result score @e[tag=shock_grenade_shot,limit=1,sort=nearest] id run scoreboard players get @s id
execute as @e[tag=shock_grenade_shot,limit=1,sort=nearest] at @s run function classes:shocksmith/grenade/projectile
