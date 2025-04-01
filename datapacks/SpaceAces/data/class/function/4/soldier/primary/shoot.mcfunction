
scoreboard players set @s[scores={shoot=..0}] shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["rifle","raycast","new"]}
execute anchored eyes run tp @n[type=minecraft:area_effect_cloud,tag=rifle,tag=new,distance=..3] ^ ^ ^ ~ ~
execute as @n[type=minecraft:area_effect_cloud,tag=rifle,tag=new,distance=..3] at @s run function class:4/soldier/primary/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~
return 1
