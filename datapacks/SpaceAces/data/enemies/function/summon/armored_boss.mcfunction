summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Team:"red",Health:300.0f,Tags:["entity","hb_training","bot","boss","slow_aura","init"],CustomName:'"Armored Boss"',ArmorItems:[{id:"minecraft:golden_boots",components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:armor",id:"minecraft:887705da-21ba-43d7-8728-d7814bacb838",operation:"add_value",amount:0.0d}]}},count:1},{id:"minecraft:golden_leggings",components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:armor",id:"minecraft:887705da-21ba-43d7-8728-d7814bacb838",operation:"add_value",amount:0.0d}]}},count:1},{id:"minecraft:golden_chestplate",components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:armor",id:"minecraft:887705da-21ba-43d7-8728-d7814bacb838",operation:"add_value",amount:0.0d}]}},count:1},{id:"minecraft:golden_helmet",components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:armor",id:"minecraft:887705da-21ba-43d7-8728-d7814bacb838",operation:"add_value",amount:0.0d}]}},count:1}],active_effects:[{id:"minecraft:slow_falling",amplifier:1b,duration:80}],attributes:[{id:"minecraft:max_health",base:300.0d},{id:"minecraft:follow_range",base:64.0d},{id:"minecraft:movement_speed",base:0.4d},{id:"minecraft:attack_damage",base:20.0d},{id:"minecraft:armor",base:0.0d},{id:"minecraft:armor_toughness",base:0.0d}]}
execute as @e[distance=...1,tag=bot,tag=init,team=red] at @s run function enemies:summon/init

return 1