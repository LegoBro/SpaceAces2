#executed by a waypoint that is having an outgoing connection removed


#we must first remove ourselves from the incoming list of the waypoint we're connected to

#access the waypoint at index t
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.outgoing[$(t)][1]
#set parameters
execute store result score #waypoint sab.var run data get entity @s UUID[3]
data modify storage sa_bots:waypoint list_target set value "incoming"
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/waypoint_delete/remove_id_recursive with storage sa_bots:waypoint"
#now make this target waypoint check its $(list_target) and remove the matching id
data modify storage sa_bots:waypoint j set value 0
scoreboard players set #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
function sa_bots:editor/utility/run_command_on_waypoint_macro with storage sa_bots:waypoint


#finally, remove our outgoing connection
$data remove entity @s data.outgoing[$(t)]