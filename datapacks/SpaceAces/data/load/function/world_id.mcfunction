# World ID, this should be (ideally) unique per world
execute if data storage global:data world_id run return 1
summon marker 0 0 0 {Tags:["world_uuid"]}
data modify storage global:data world_id set from entity @n[type=marker,tag=world_uuid] UUID
kill @e[type=marker,tag=world_uuid]
data modify storage global:data game_id set value 0