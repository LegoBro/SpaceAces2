#executed by a player that already has a spread focus


#grab position of cursor
execute as a-0-0-0-1 store result score #x sab.var run data get entity @s Pos[0] 1
execute as a-0-0-0-1 store result score #z sab.var run data get entity @s Pos[2] 1

#now have the focus waypoint compare these coordinates to its own and use the difference as new x and z spread
function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointSpreadFocus",command:"function sa_bots:editor/tools/spread/set_spread_via_cursor_apply",context:"as"}