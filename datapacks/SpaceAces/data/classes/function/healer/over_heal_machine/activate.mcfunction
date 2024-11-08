summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["entity","over_heal_machine","hb_player"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"minecraft:custom_model_data":11060004},count:1}]}
execute store result score @e[type=minecraft:armor_stand,tag=over_heal_machine,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=over_heal_machine,sort=nearest,limit=1,distance=..3] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=over_heal_machine,sort=nearest,limit=1,distance=..3] add red
scoreboard players set @e[type=minecraft:armor_stand,tag=over_heal_machine,sort=nearest,limit=1,distance=..3] health 50
execute if entity @s[team=blue] run team join blue @e[type=minecraft:armor_stand,tag=over_heal_machine,sort=nearest,limit=1,distance=..3]
execute if entity @s[team=red] run team join red @e[type=minecraft:armor_stand,tag=over_heal_machine,sort=nearest,limit=1,distance=..3]

return 1