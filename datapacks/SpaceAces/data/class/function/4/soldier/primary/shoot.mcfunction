
scoreboard players set @s[scores={shoot=..0}] shoot 1
scoreboard players remove @s[scores={ultimate.cooldown=..0}] totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

execute anchored eyes run summon item_display ^-0.5 ^-0.5 ^ {Tags:["rifle","raycast","new","laser"],item:{id:stone,components:{item_model:air}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.125f]},teleport_duration:1,billboard: "center"}
#summon minecraft:item_display ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["rifle","raycast","new"]}
execute anchored eyes run tp @n[type=minecraft:item_display,tag=rifle,tag=new,distance=..3] ^ ^ ^ ~ ~
execute as @n[type=minecraft:item_display,tag=rifle,tag=new,distance=..3] at @s run function class:4/soldier/primary/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~
return 1
