## Player has started initial training (tutorial)
tag @s[tag=training_0] remove training_0
execute if block 10032 122 11 lime_stained_glass unless entity @p[tag=training_2] run fill 10032 122 11 10034 124 11 air destroy
execute if block 10017 119 19 air run fill 10017 119 19 10019 121 19 lime_stained_glass

execute if block ~ ~-2 ~ iron_block run tag @s add training_2
execute if block ~ ~-2 ~ iron_block unless entity @e[type=zombie,tag=training_2_0,tag=training_bot] run summon zombie 10006 122 3 {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b}],CustomNameVisible:1b,Team:"red",Health:100f,Tags:["entity","hb_training","training_bot","training_2_0"],CustomName:"{\"text\":\"Training Bot\"}",Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:64},{Name:generic.movement_speed,Base:.2},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}
execute if block ~ ~-2 ~ iron_block unless entity @e[type=zombie,tag=training_2_0,tag=training_bot] run summon zombie 10018 122 -3 {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b}],CustomNameVisible:1b,Team:"red",Health:100f,Tags:["entity","hb_training","training_bot","training_2_0"],CustomName:"{\"text\":\"Training Bot\"}",Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:64},{Name:generic.movement_speed,Base:.2},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}
execute if block ~ ~-2 ~ iron_block run fill 10001 121 1 9999 121 -1 lime_stained_glass
