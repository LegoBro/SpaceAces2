## Vis Mine becomes active
execute if entity @s[tag=blue] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["active_vis_mine","hb_player","entity","blue"],Team:"blue",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",tag:{CustomModelData:11030004},Count:1b}]}
execute if entity @s[tag=red] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["active_vis_mine","hb_player","entity","red"],Team:"red",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",tag:{CustomModelData:11030004},Count:1b}]}
scoreboard players set @e[type=armor_stand,tag=active_vis_mine,limit=1,sort=nearest] health 50
