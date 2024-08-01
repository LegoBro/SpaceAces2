summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["entity","over_heal_machine","hb_player"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",tag:{CustomModelData:11060004},Count:1b}]}
execute store result score @e[type=armor_stand,tag=over_heal_machine,limit=1,sort=nearest] id run scoreboard players get @s id
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=over_heal_machine,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=over_heal_machine,limit=1,sort=nearest] add red
scoreboard players set @e[type=armor_stand,tag=over_heal_machine,limit=1,sort=nearest] health 50
execute if entity @s[team=blue] run team join blue @e[type=armor_stand,tag=over_heal_machine,limit=1,sort=nearest]
execute if entity @s[team=red] run team join red @e[type=armor_stand,tag=over_heal_machine,limit=1,sort=nearest]
