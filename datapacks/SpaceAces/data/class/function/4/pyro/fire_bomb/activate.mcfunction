summon item_display ~ ~ ~ {Tags:["fire_bomb","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=fire_bomb,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=fire_bomb,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/bomber/primary/projectile

playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

scoreboard players operation @s ability.1.cooldown = class.pyro.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1