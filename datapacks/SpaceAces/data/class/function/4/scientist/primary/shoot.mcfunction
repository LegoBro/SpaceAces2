
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon item_display ~ ~ ~ {Tags:["chem","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["chem","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["chem","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=chem,tag=new,sort=nearest,limit=3,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=chem,sort=nearest,tag=new,limit=3,distance=..3] at @s positioned ~ ~ ~ run function class:4/scientist/primary/projectile
execute at @s run playsound minecraft:gun.chem_launcher hostile @a ~ ~ ~
return 1