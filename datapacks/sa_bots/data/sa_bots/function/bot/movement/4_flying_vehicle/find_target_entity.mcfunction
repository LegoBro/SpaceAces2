#------------------------
#find the entity we're targeting
scoreboard players operation #get_id sab.var = @s sab.botTargetEntityID
execute store result storage uuid:in UUID[0] int 1 run scoreboard players get @s sab.botTargetUUID0
execute store result storage uuid:in UUID[1] int 1 run scoreboard players get @s sab.botTargetUUID1
execute store result storage uuid:in UUID[2] int 1 run scoreboard players get @s sab.botTargetUUID2
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get @s sab.botTargetUUID3
function sa_uuid4:convert_full
data modify storage uuid:out max_range set value 200
function sa_bots:bot/movement/4_flying_vehicle/find_target_entity_macro with storage uuid:out
#------------------------