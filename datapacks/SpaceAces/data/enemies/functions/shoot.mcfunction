summon area_effect_cloud ~ ~ ~ {Particle:"dolphin",ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0f,Age:0,Tags:["rifle","raycast","red"]}
tp @e[tag=rifle,limit=1,sort=nearest] ~ ~1.6 ~ ~ ~
execute store result score @e[tag=rifle,limit=1,sort=nearest] id run scoreboard players get @s id
execute as @e[tag=rifle,limit=1,sort=nearest] at @s run function classes:gunner/projectile
execute as @s at @s run playsound gun.rifle hostile @a ~ ~ ~
