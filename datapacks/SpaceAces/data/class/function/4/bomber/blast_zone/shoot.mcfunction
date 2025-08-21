summon item_display ~ ~ ~ {Tags:["plasma_grenade","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=plasma_grenade,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,tag=new,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/bomber/blast_zone/projectile
execute at @s run playsound minecraft:gun.launcher hostile @a ~ ~ ~
return 1