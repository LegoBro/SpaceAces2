#executed by the player that just spawned a waypoint Marker


#connect source
execute store result score #waypoint_source sab.var run data get entity @e[limit=1,type=marker,tag=sab.setWpData,distance=..1] UUID[3]


#...to the target
function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointLastPlaced",command:"function sa_bots:editor/tools/connector/pick_second_waypoint {mode:'2way'}",context:"on"}

#if the target isn't found, this should fail without any negative consequences