
summon item_display ~ ~ ~ {Tags:["rocket","raycast","grenade"],teleport_duration:1}
execute if entity @s[team=blue] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] add red
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:item_display,sort=nearest,limit=1,distance=..3] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:item_display,tag=rocket,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute as @e[type=minecraft:item_display,tag=rocket,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function class:rocketeer/projectile
execute at @s run playsound minecraft:gun.rocket hostile @a ~ ~ ~
return 1