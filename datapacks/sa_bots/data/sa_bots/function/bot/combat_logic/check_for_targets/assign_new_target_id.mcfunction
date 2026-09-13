#executed by any entity

scoreboard players add #assign_entity_targeting_id sab.var 1
execute if score #assign_entity_targeting_id sab.var matches ..0 run scoreboard players set #assign_entity_targeting_id sab.var 1
scoreboard players operation @s sab.entityTargetingID = #assign_entity_targeting_id sab.var
