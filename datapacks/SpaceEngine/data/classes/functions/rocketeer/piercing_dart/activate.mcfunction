summon area_effect_cloud ~ ~ ~ {Particle:"take",ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0f,Age:0,Tags:["dart","raycast"]}
execute if entity @s[team=blue] run tag @e[type=area_effect_cloud,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[type=area_effect_cloud,limit=1,sort=nearest] add red
tp @e[tag=dart,limit=1,sort=nearest] ~ ~1.6 ~ ~ ~
execute store result score @e[tag=dart,limit=1,sort=nearest] id run scoreboard players get @s id
execute as @e[tag=dart,limit=1,sort=nearest] at @s run function classes:rocketeer/piercing_dart/projectile
playsound gun.rifle player @a ~ ~ ~ 1 2
