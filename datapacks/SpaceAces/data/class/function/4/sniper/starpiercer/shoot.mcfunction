

scoreboard players operation #damage Numbers = @s ability.1.cooldown
scoreboard players operation #damage Numbers *= -1 Numbers

scoreboard players set @s ability.1.cooldown 0

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["sniper","raycast","new"]}
execute anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=sniper,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=sniper,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/sniper/starpiercer/projectile
execute at @s run playsound minecraft:gun.plasma hostile @a ~ ~ ~
return 1