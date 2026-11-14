#mark for deletion
function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointEditFocus",command:"tag @s[type=marker] add sab.deleteWaypoint",context:"on"}

#deleted nodes will be processed gradually instead of all at once
#this way we don't risk overflowing the command limit when they all recursively remove connection data that involves them


#feedback
playsound block.fire.extinguish master @s

#blank out the menu
function sa_bots:editor/tools/edit/lose_focus