summon item_display ~ ~ ~ {Tags:["plasma_grenade","raycast","grenade"],teleport_duration:1}
execute if entity @s[team=blue] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add red
execute anchored eyes run tp @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~ ~ run function classes:bomber/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

scoreboard players operation @s ability.1.cooldown = class.soldier.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1