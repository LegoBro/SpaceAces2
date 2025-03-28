
scoreboard players set @s[scores={shoot=..0}] shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["rifle","raycast"]}
scoreboard players operation @n[type=minecraft:area_effect_cloud,tag=rifle,sort=nearest,limit=1,distance=..3] Team = @s Team
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..3] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=rifle,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:area_effect_cloud,tag=rifle,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:area_effect_cloud,tag=rifle,sort=nearest,limit=1,distance=..3] at @s run function classes:soldier/primary/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~
return 1
