summon husk ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Team:"red",Health:50f,Tags:["init","entity","hb_training","zap_bot","bot"],CustomName:"{\"text\":\"Zap Bot\"}",Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:64},{Name:generic.movement_speed,Base:.25},{Name:generic.attack_damage,Base:50},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}
execute as @e[team=red,tag=bot,distance=...1,tag=init] at @s run function enemies:summon/init