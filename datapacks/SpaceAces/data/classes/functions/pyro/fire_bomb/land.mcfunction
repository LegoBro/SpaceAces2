## fire bomb becomes active
summon armor_stand ~ ~-1.5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["active_fire_bomb","hb_player","entity"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",tag:{CustomModelData:11120005}}]}
execute if entity @s[tag=blue] run tag @e[type=armor_stand,tag=active_fire_bomb,limit=1,sort=nearest] add blue
execute if entity @s[tag=red] run tag @e[type=armor_stand,tag=active_fire_bomb,limit=1,sort=nearest] add red
execute store result score @e[type=armor_stand,tag=active_fire_bomb,limit=1,sort=nearest] id run scoreboard players get @s id
