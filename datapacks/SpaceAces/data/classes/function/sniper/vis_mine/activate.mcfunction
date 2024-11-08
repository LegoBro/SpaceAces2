## Throw the vis mine
summon minecraft:item_display ~ ~ ~ {Tags:["vis_mine","raycast","grenade"],teleport_duration:1}
execute if entity @s[team=blue] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add red
execute anchored eyes run tp @e[type=minecraft:item_display,tag=vis_mine,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:item_display,tag=vis_mine,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:item_display,tag=vis_mine,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function classes:sniper/vis_mine/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

return 1