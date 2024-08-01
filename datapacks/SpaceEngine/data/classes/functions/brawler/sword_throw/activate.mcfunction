## Throw da sword
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["thrown_sword"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",tag:{CustomModelData:11070004},Count:1b}]}
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=thrown_sword,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=thrown_sword,limit=1,sort=nearest] add red
tp @e[type=armor_stand,tag=thrown_sword,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute store result score @e[tag=thrown_sword,limit=1,sort=nearest] id run scoreboard players get @s id
effect give @s speed 1 1 true
scoreboard players set @s totalShots 0
