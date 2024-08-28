## Vis Mine becomes active
execute if entity @s[tag=blue] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["active_vis_mine","hb_player","entity","blue"],Team:"blue",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11030004},count:1}]}
execute if entity @s[tag=red] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["active_vis_mine","hb_player","entity","red"],Team:"red",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11030004},count:1}]}
scoreboard players set @e[type=minecraft:armor_stand,tag=active_vis_mine,sort=nearest,limit=1] health 50

return 1