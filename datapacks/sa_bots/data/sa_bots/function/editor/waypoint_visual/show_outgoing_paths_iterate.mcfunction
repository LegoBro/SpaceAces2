#executed by source waypoint
#executed with storage sa_bots:waypoint


#trail color is red by default
data modify storage sa_bots:waypoint trail_color set value "[1,0.25,0.25]"
#subroutes are white if we're a subroute node
execute if entity @s[tag=sab.botSubroute] run data modify storage sa_bots:waypoint trail_color set value "[1,1,1]"
#yellow color if outgoing path has an event attached
$execute store result score #read sab.var run data get entity @s data.outgoing[$(i)][2][0]
execute if score #read sab.var matches 1.. run data modify storage sa_bots:waypoint trail_color set value "[1,1,0]"
execute if score #read sab.var matches 1.. store result storage sa_bots:waypoint_info event_name_index int 1 run scoreboard players get #read sab.var

#access the waypoint at index i
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.$(list)[$(i)][1]
#now make this target waypoint make a particle
function sa_bots:editor/utility/run_command_as_waypoint_macro with storage sa_bots:waypoint


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.$(list)[$(iplus1)] run function sa_bots:editor/waypoint_visual/show_outgoing_paths_iterate with storage sa_bots:waypoint