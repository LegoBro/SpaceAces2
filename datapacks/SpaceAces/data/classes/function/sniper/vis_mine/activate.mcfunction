## Throw the vis mine
summon minecraft:item_display ~ ~ ~ {Tags:["vis_mine","raycast","grenade"],teleport_duration:1}
scoreboard players operation @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] Team = @s Team
execute anchored eyes run tp @e[type=minecraft:item_display,tag=vis_mine,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:item_display,tag=vis_mine,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:item_display,tag=vis_mine,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function classes:sniper/vis_mine/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

scoreboard players operation @s ability.2.cooldown = class.sniper.2.cooldown Numbers
scoreboard players reset @s rightClick

return 1