summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Team:"red",Health:50.0f,Tags:["entity","hb_training","bot","init"],CustomName:'"Bot"',attributes:[{id:"minecraft:max_health",base:50.0d},{id:"minecraft:follow_range",base:64.0d},{id:"minecraft:movement_speed",base:0.35d},{id:"minecraft:attack_damage",base:20.0d},{id:"minecraft:armor",base:0.0d},{id:"minecraft:armor_toughness",base:0.0d}]}
execute as @e[distance=...1,tag=bot,tag=init,team=red] at @s run function enemies:summon/init

return 1