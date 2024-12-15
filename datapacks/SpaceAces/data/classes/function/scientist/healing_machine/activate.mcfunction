execute if entity @s[team=blue] run summon minecraft:slime ~ ~ ~ {Silent:1b,Team:"blue",PersistenceRequired:0b,NoAI:1b,Size:0,Tags:["healing_machine","entity","hb_turret"],Health:50.0f,attributes:[{id:"minecraft:max_health",base:50.0d}]}
execute if entity @s[team=red] run summon minecraft:slime ~ ~ ~ {Silent:1b,Team:"red",PersistenceRequired:0b,NoAI:1b,Size:0,Tags:["healing_machine","entity","hb_turret"],Health:50.0f,attributes:[{id:"minecraft:max_health",base:50.0d}]}
summon minecraft:armor_stand ~ ~-.3 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["healing_machine_display"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:apple",count:1}]}
playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 0 0
execute store result score @e[type=minecraft:slime,tag=healing_machine,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
scoreboard players set @e[type=minecraft:slime,tag=healing_machine,sort=nearest,limit=1,distance=..3] health 100

return 1