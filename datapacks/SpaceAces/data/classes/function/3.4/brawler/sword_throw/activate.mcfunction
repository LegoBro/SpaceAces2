## Throw da sword
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["thrown_sword"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"item_model":"brawler/sword_throw"},count:1}]}
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=thrown_sword,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=thrown_sword,sort=nearest,limit=1,distance=..3] add red
tp @e[type=minecraft:armor_stand,tag=thrown_sword,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute store result score @e[type=minecraft:armor_stand,tag=thrown_sword,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
effect give @s minecraft:speed 1 1 true
scoreboard players set @s totalShots 0

return 1