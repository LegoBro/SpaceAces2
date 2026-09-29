#executed by a temporary marker used for decision-making


#get id and sector of the waypoint we have a direct reference to
data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.uuid4
data modify storage sa_bots:waypoint command set value "function sa_bots:bot/utility/waypoint_get_id_and_sector"
function sa_bots:editor/utility/run_command_as_waypoint_macro