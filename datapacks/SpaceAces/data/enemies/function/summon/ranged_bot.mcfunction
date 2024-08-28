summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Team:"red",Health:50.0f,Tags:["init","entity","hb_training","bot","ranged","standard"],CustomName:'"Ranged Bot"',attributes:[{id:"minecraft:generic.max_health",base:50.0d},{id:"minecraft:generic.follow_range",base:64.0d},{id:"minecraft:generic.movement_speed",base:0.25d},{id:"minecraft:generic.attack_damage",base:20.0d},{id:"minecraft:generic.armor",base:0.0d},{id:"minecraft:generic.armor_toughness",base:0.0d}]}
execute as @e[distance=...1,tag=bot,tag=init,team=red] at @s run function enemies:summon/init

return 1