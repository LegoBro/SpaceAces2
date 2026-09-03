tag @s add sab.tellMe
function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointSpreadFocus",command:"function sa_bots:editor/tools/spread/highlighted_node",context:"on"}
tag @s remove sab.tellMe