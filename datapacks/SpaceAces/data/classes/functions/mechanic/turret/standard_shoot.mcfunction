summon area_effect_cloud ~ ~ ~ {Particle:"dolphin",ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0f,Age:0,Tags:["rifle","raycast"]}
execute if entity @s[team=blue] run tag @e[type=area_effect_cloud,limit=1,sort=nearest,tag=rifle] add blue
execute if entity @s[team=red] run tag @e[type=area_effect_cloud,limit=1,sort=nearest,tag=rifle] add red
execute store result score @e[tag=rifle,limit=1,sort=nearest] id run scoreboard players get @s id
tp @e[tag=rifle,limit=1,sort=nearest] ~ ~1.1 ~ ~ ~
execute as @e[tag=rifle,limit=1,sort=nearest] at @s run function classes:soldier/projectile
playsound gun.rifle player @a ~ ~ ~ 1.0 2.0
