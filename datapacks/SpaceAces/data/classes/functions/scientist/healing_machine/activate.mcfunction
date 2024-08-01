execute if entity @s[team=blue] run summon slime ~ ~ ~ {Silent:1b,Team:"blue",PersistenceRequired:0b,NoAI:1b,Size:0,Tags:["healing_machine","entity","hb_turret"],Health:50f,Attributes:[{Name:generic.max_health,Base:50}]}
execute if entity @s[team=red] run summon slime ~ ~ ~ {Silent:1b,Team:"red",PersistenceRequired:0b,NoAI:1b,Size:0,Tags:["healing_machine","entity","hb_turret"],Health:50f,Attributes:[{Name:generic.max_health,Base:50}]}
summon armor_stand ~ ~-.3 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["healing_machine_display"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b}]}
playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 0 0
execute store result score @e[type=slime,tag=healing_machine,limit=1,sort=nearest] id run scoreboard players get @s id
scoreboard players set @e[type=slime,tag=healing_machine,limit=1,sort=nearest] health 100
