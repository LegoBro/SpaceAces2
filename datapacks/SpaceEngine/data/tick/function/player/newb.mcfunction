## Player has never played before
execute if block 10030 119 27 minecraft:lime_stained_glass unless entity @p[tag=training_0] run fill 10030 121 27 10032 119 27 minecraft:air destroy
execute if block ~ ~-2 ~ minecraft:gold_block run tag @s add training_0
execute if block ~ ~-2 ~ minecraft:gold_block unless entity @e[type=minecraft:zombie,tag=training_0_0,tag=training_bot] run summon minecraft:zombie 10018 119 23 {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",count:1}],CustomNameVisible:1b,Team:"red",Health:100.0f,Tags:["entity","hb_training","training_bot","training_0_0"],CustomName:'"Training Bot"',attributes:[{id:"minecraft:generic.max_health",base:100.0d},{id:"minecraft:generic.follow_range",base:64.0d},{id:"minecraft:generic.movement_speed",base:0.0d},{id:"minecraft:generic.attack_damage",base:20.0d},{id:"minecraft:generic.armor",base:0.0d},{id:"minecraft:generic.armor_toughness",base:0.0d}]}

return 1