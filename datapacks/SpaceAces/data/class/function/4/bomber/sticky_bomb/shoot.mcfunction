
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon item_display ^-1 ^0.3 ^ {Tags:["standby_sticky_bomb","sticky_bomb","raycast","grenade","new","projectile.invisible"],teleport_duration:2,item:{id:paper,components:{item_model:"class/bomber/sticky"}}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=sticky_bomb,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=standby_sticky_bomb,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/bomber/sticky_bomb/projectile
playsound minecraft:gun.launcher master @a ~ ~ ~ 1.0 0.0
return 1