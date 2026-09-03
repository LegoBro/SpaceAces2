#focus waypoint should attempt to maximize spread
execute if score @s sab.waypointSpreadFocus matches 1.. run function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointSpreadFocus",command:"function sa_bots:editor/spawn/data/try_auto_spread",context:"on"}


#update menu
function sa_bots:editor/menu/12_spread_menu


#feedback
playsound block.note_block.hat master @s