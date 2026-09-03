#get data on the waypoint at index i
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.outgoing[$(i)][1]
#if this is a subroute, look at the endpoint instead
$execute store result score #read sab.var run data get entity @s data.outgoing[$(i)][3][0]
$execute if score #read sab.var matches 1.. run data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.outgoing[$(i)][3][1]
#is this an event?
$execute store result score #set_event sab.var run data get entity @s data.outgoing[$(i)][2][0]
#run command on whatever the target is
function sa_bots:editor/utility/run_command_as_waypoint_macro with storage sa_bots:waypoint

#iterate through outgoing connections
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.outgoing[$(iplus1)] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/outgoing_paths_iterate with storage sa_bots:waypoint