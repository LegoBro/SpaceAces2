#executed by source waypoint
#executed with storage sa_bots:waypoint


#access the waypoint at index i
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.incoming[$(i)][1]
#now make this target waypoint check incoming sector borders
function sa_bots:editor/utility/run_command_as_waypoint_macro with storage sa_bots:waypoint


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.incoming[$(iplus1)] run function sa_bots:editor/utility/check_incoming_for_sector_borders_iterate with storage sa_bots:waypoint