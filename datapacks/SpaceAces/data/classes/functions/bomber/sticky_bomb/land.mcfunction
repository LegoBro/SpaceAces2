## Vis Mine becomes active
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["entity","standby_sticky_bomb","hb_player"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",tag:{CustomModelData:11040005},Count:1b}]}
execute store result score @e[type=armor_stand,tag=standby_sticky_bomb,limit=1,sort=nearest] id run scoreboard players get @s id
execute if entity @s[tag=blue] run tag @e[type=armor_stand,tag=standby_sticky_bomb,limit=1,sort=nearest] add blue
execute if entity @s[tag=red] run tag @e[type=armor_stand,tag=standby_sticky_bomb,limit=1,sort=nearest] add red
scoreboard players set @e[type=armor_stand,tag=standby_sticky_bomb,limit=1,sort=nearest] health 50
execute if entity @s[tag=blue] run team join blue @e[type=armor_stand,tag=standby_sticky_bomb,limit=1,sort=nearest]
execute if entity @s[tag=red] run team join red @e[type=armor_stand,tag=standby_sticky_bomb,limit=1,sort=nearest]
