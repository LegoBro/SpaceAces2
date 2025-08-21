scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.shocksmith.ultimate.duration Numbers
scoreboard players reset @s rightClick

summon item_display ~ ~ ~ {Tags:["class.shocksmith.shocksplosion","raycast","grenade","new","class.deployable"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=grenade,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=grenade,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/shocksmith/shocksplosion/projectile
playsound minecraft:gun.launcher master @a ~ ~ ~ 1.0 0.0

return 1