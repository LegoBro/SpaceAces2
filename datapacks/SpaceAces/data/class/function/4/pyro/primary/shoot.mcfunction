
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon item_display ~ ~ ~ {Tags:["hot_air","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=hot_air,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=hot_air,sort=nearest,tag=new,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/pyro/primary/projectile
execute at @s run playsound minecraft:gun.launcher hostile @a ~ ~ ~
return 1