
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon item_display ^-1 ^0.3 ^ {Tags:["rocket","raycast","grenade","ignore.projectiles","new","projectile.invisible"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/grenade"}}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=rocket,sort=nearest,tag=new,limit=1,distance=..3] at @s positioned ~ ~ ~ run function class:4/rocketeer/primary/projectile
execute at @s run playsound minecraft:gun.rocket hostile @a ~ ~ ~
return 1