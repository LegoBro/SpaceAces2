summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Team:"red",Health:20.0f,Tags:["entity","hb_mine_runner","fire_bot","bot","weak","init"],CustomName:'"Fire Bot"',attributes:[{id:"minecraft:generic.max_health",base:20.0d},{id:"minecraft:generic.follow_range",base:128.0d},{id:"minecraft:generic.movement_speed",base:0.5d},{id:"minecraft:generic.attack_damage",base:5.0d},{id:"minecraft:generic.armor",base:0.0d},{id:"minecraft:generic.armor_toughness",base:0.0d}]}
execute as @e[distance=...1,tag=bot,tag=init,team=red] at @s run function enemies:summon/init

return 1