## Vis Mine becomes active
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["entity","standby_sticky_bomb","hb_player"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11040005},count:1}]}
execute store result score @e[type=minecraft:armor_stand,tag=standby_sticky_bomb,sort=nearest,limit=1,distance=..1.5] id run scoreboard players get @s id
execute if entity @s[tag=blue] run tag @e[type=minecraft:armor_stand,tag=standby_sticky_bomb,sort=nearest,limit=1,distance=..1.5] add blue
execute if entity @s[tag=red] run tag @e[type=minecraft:armor_stand,tag=standby_sticky_bomb,sort=nearest,limit=1,distance=..1.5] add red
scoreboard players set @e[type=minecraft:armor_stand,tag=standby_sticky_bomb,sort=nearest,limit=1,distance=..1.5] health 50
execute if entity @s[tag=blue] run team join blue @e[type=minecraft:armor_stand,tag=standby_sticky_bomb,sort=nearest,limit=1,distance=..1.5]
execute if entity @s[tag=red] run team join red @e[type=minecraft:armor_stand,tag=standby_sticky_bomb,sort=nearest,limit=1,distance=..1.5]

return 1