## Throw the vis mine
summon minecraft:item_display ~ ~ ~ {Tags:["vis_mine","raycast","grenade","hb_mine","entity","class.deployable","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=vis_mine,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=vis_mine,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:4/sniper/vis_mine/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

scoreboard players operation @s ability.2.cooldown = class.sniper.2.cooldown Numbers
scoreboard players reset @s rightClick

return 1