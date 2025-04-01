
scoreboard players set @s[scores={shoot=..0}] shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["pistol","raycast","new"]}
execute anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=pistol,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=pistol,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/mobility/primary/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~
return 1