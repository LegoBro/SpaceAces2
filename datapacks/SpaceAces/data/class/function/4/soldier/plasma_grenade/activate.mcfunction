summon item_display ~ ~ ~ {Tags:["soldier_grenade","raycast","grenade","ignore.projectiles","new","projectile.invisible"],teleport_duration:2,item:{id:paper,components:{item_model:"class/soldier/grenade"}}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=soldier_grenade,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=soldier_grenade,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/soldier/plasma_grenade/projectile

playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

scoreboard players operation @s ability.1.cooldown = class.soldier.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1