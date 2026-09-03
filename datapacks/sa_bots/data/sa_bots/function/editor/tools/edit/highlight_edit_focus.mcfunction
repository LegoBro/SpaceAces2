tag @s add sab.tellMe
function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointEditFocus",command:"function sa_bots:editor/tools/edit/highlight_edit_focus_go",context:"on"}
tag @s remove sab.tellMe