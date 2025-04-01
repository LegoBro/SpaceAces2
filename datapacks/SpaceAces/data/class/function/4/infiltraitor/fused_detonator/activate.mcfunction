scoreboard players operation @s ability.2.cooldown = class.infiltraitor.2.cooldown Numbers
scoreboard players reset @s rightClick

summon item_display ~ ~ ~ {Tags:["fused_detonator","raycast","grenade","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=grenade,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=grenade,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/infiltraitor/fused_detonator/projectile
playsound minecraft:gun.launcher master @a ~ ~ ~ 1.0 0.0

return 1