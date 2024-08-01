## Player has never played before
execute if block 10030 119 27 lime_stained_glass unless entity @p[tag=training_0] run fill 10030 121 27 10032 119 27 air destroy
execute if block ~ ~-2 ~ gold_block run tag @s add training_0
execute if block ~ ~-2 ~ gold_block unless entity @e[type=zombie,tag=training_0_0,tag=training_bot] run summon zombie 10018 119 23 {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b}],CustomNameVisible:1b,Team:"red",Health:100f,Tags:["entity","hb_training","training_bot","training_0_0"],CustomName:"{\"text\":\"Training Bot\"}",Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:64},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}
