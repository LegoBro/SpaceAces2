## fire bomb becomes active
summon minecraft:armor_stand ~ ~-1.5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["active_fire_bomb","hb_player","entity"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11120005}}]}
execute if entity @s[tag=blue] run tag @e[type=minecraft:armor_stand,tag=active_fire_bomb,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[tag=red] run tag @e[type=minecraft:armor_stand,tag=active_fire_bomb,sort=nearest,limit=1,distance=..3] add red
execute store result score @e[type=minecraft:armor_stand,tag=active_fire_bomb,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id

return 1