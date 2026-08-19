summon item_display ~ ~ ~ {Tags:["smokescreen","raycast","grenade","ignore.projectiles","new","projectile.invisible"],teleport_duration:2,item:{id:paper,components:{item_model:"class/bomber/smoke_grenade"}}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=smokescreen,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=smokescreen,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/bomber/smokescreen/projectile

playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

scoreboard players operation @s ability.2.cooldown = class.bomber.2.cooldown Numbers
scoreboard players reset @s rightClick

return 1