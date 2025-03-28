## Throw the vis mine

scoreboard players operation @s ability.2.cooldown = class.mobility.2.cooldown Numbers
scoreboard players reset @s rightClick

summon minecraft:item_display ~ ~ ~ {Tags:["flash_grenade","raycast","grenade","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=flash_grenade,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=flash_grenade,tag=new,sort=nearest,limit=1,distance=..3] at @s run function classes:4/mobility/flash_grenade/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

return 1