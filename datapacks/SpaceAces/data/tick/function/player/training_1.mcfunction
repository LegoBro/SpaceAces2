## Player has started initial training (tutorial)
tag @s[tag=training_0] remove training_0
execute if block 10032 122 11 minecraft:lime_stained_glass unless entity @p[tag=training_2] run fill 10032 122 11 10034 124 11 minecraft:air destroy
execute if block 10017 119 19 minecraft:air run fill 10017 119 19 10019 121 19 minecraft:lime_stained_glass

execute if block ~ ~-2 ~ minecraft:iron_block run tag @s add training_2
execute if block ~ ~-2 ~ minecraft:iron_block unless entity @e[type=minecraft:zombie,tag=training_2_0,tag=training_bot] run summon minecraft:zombie 10006 122 3 {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",count:1}],CustomNameVisible:1b,Team:"red",Health:100.0f,Tags:["entity","hb_training","training_bot","training_2_0"],CustomName:'"Training Bot"',attributes:[{id:"minecraft:max_health",base:100.0d},{id:"minecraft:follow_range",base:64.0d},{id:"minecraft:movement_speed",base:0.2d},{id:"minecraft:attack_damage",base:20.0d},{id:"minecraft:armor",base:0.0d},{id:"minecraft:armor_toughness",base:0.0d}]}
execute if block ~ ~-2 ~ minecraft:iron_block unless entity @e[type=minecraft:zombie,tag=training_2_0,tag=training_bot] run summon minecraft:zombie 10018 122 -3 {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",count:1}],CustomNameVisible:1b,Team:"red",Health:100.0f,Tags:["entity","hb_training","training_bot","training_2_0"],CustomName:'"Training Bot"',attributes:[{id:"minecraft:max_health",base:100.0d},{id:"minecraft:follow_range",base:64.0d},{id:"minecraft:movement_speed",base:0.2d},{id:"minecraft:attack_damage",base:20.0d},{id:"minecraft:armor",base:0.0d},{id:"minecraft:armor_toughness",base:0.0d}]}
execute if block ~ ~-2 ~ minecraft:iron_block run fill 10001 121 1 9999 121 -1 minecraft:lime_stained_glass

return 1