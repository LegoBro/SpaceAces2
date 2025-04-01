summon item_display ~ ~ ~ {Tags:["plasma_grenade","raycast","grenade"],teleport_duration:1}
execute if entity @s[team=blue] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add red
execute if entity @s[scores={crouching=0}] run tp @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] ~ ~.6 ~ ~ ~
execute if entity @s[scores={crouching=1}] run tp @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] ~ ~.26 ~ ~ ~
execute store result score @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:item_display,tag=plasma_grenade,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~1.25 ~ run function class:3.4/bomber/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

return 1