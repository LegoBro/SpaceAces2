
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon item_display ~ ~ ~ {Tags:["standby_sticky_bomb","sticky_bomb","raycast","grenade","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=sticky_bomb,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=standby_sticky_bomb,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function classes:4/bomber/sticky_bomb/projectile
playsound minecraft:gun.launcher master @a ~ ~ ~ 1.0 0.0
return 1