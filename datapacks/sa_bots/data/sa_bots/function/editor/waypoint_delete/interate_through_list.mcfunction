#executed by source waypoint
#executed with storage sa_bots:waypoint

#access the waypoint at index i
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.$(list)[$(i)][1]
#now make this target waypoint check its $(list_target) and remove the matching id
data modify storage sa_bots:waypoint j set value 0
scoreboard players set #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
function sa_bots:editor/utility/run_command_on_waypoint_macro with storage sa_bots:waypoint


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.$(list)[$(iplus1)] run function sa_bots:editor/waypoint_delete/interate_through_list with storage sa_bots:waypoint