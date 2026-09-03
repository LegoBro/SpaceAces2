#call with arguments
#$(player_score) -- input. should be an integer id of a waypoint
#$(command) -- command to run
#$(context) -- sab.varaint

$execute store result storage uuid:in UUID[3] int 1 run scoreboard players get $(player_score)
function sa_uuid4:convert
$data modify storage sa_bots:waypoint command set value "$(command)"
data modify storage sa_bots:waypoint waypoint_target_string set from storage uuid:out plain
$function sa_bots:editor/utility/run_command_$(context)_waypoint_macro with storage sa_bots:waypoint