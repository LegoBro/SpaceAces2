#look up uuid4
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.outgoing[$(index)][1]
#now get move_target data from target waypoint
data modify storage sa_bots:waypoint command set value "function sa_bots:bot/waypoint_nav/get_waypoint_target_struct"
function sa_bots:editor/utility/run_command_as_waypoint_macro with storage sa_bots:waypoint