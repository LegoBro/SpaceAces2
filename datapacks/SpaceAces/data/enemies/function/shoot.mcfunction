summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["rifle","raycast","red"]}
tp @e[tag=rifle,sort=nearest,limit=1] ~ ~1.6 ~ ~ ~
execute store result score @e[tag=rifle,sort=nearest,limit=1] id run scoreboard players get @s id
execute as @e[tag=rifle,sort=nearest,limit=1] at @s run function class:gunner/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~

return 1