#executed by a waypoint that is clearing all incoming connections it has


#get our uuid4 as integer
execute store result score #waypoint sab.var run data get entity @s UUID[3]


#target waypoints will be running this command:
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/waypoint_delete/remove_id_recursive with storage sa_bots:waypoint"

#remove ourselves from outgoing list from all waypoints on our incoming list
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
data modify storage sa_bots:waypoint list set value "incoming"
data modify storage sa_bots:waypoint list_target set value "outgoing"
execute if data entity @s data.incoming[0] run function sa_bots:editor/waypoint_delete/interate_through_list with storage sa_bots:waypoint

#also remove ourselves from outgoing endpoints from all waypoints on our incoming list
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/waypoint_delete/remove_id_endpoint_recursive with storage sa_bots:waypoint"
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
data modify storage sa_bots:waypoint list set value "incoming"
execute if data entity @s data.incoming[0] run function sa_bots:editor/waypoint_delete/interate_through_list with storage sa_bots:waypoint


#now clear our own lists (this is easy)
data remove entity @s data.incoming
