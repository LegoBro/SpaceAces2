summon zombie ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Team:"red",Health:50f,Tags:["entity","hb_training","bonus","bot","init"],CustomName:"{\"text\":\"Bot\"}",Attributes:[{Name:generic.max_health,Base:50},{Name:generic.follow_range,Base:64},{Name:generic.movement_speed,Base:.35},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}],Passengers:[{id:"minecraft:armor_stand",Tags:["bonus"],DisabledSlots:4144959,Team:"blue",Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}]}
execute as @e[team=red,tag=bot,distance=...1,tag=init] at @s run function enemies:summon/init