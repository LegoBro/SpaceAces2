
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

execute if score @s fire matches 1.. unless score @s reload matches 1.. anchored eyes run summon item_display ^-0.9 ^-0.9 ^ {Tags:["hot_air","raycast","grenade","ignore.projectiles","new","projectile.invisible"],teleport_duration:2,item:{id:paper,components:{item_model:"class/pyro/laser"}}}
execute anchored eyes run summon item_display ^-0.9 ^-0.9 ^ {Tags:["hot_air","raycast","grenade","ignore.projectiles","new","projectile.invisible"],teleport_duration:2,item:{id:paper,components:{item_model:"class/pyro/laser"}}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=hot_air,tag=new,sort=nearest,limit=2,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=hot_air,sort=nearest,tag=new,limit=2,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/pyro/primary/projectile
execute at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~



return 1