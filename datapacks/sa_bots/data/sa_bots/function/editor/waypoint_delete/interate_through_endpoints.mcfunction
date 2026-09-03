#executed by source waypoint
#executed with storage sa_bots:waypoint

#access the waypoint at index i, but only if endpoint reference is not -1 (meaning it's null)
$execute if data entity @s data.outgoing[$(i)][3][1] run data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.outgoing[$(i)][3][1]
#don't bother unless there's an endpoint reference to look at
scoreboard players set #read sab.var 0
$execute if data entity @s data.outgoing[$(i)][3][0] store result score #read sab.var run data get entity @s data.outgoing[$(i)][3][0]
#now make this target waypoint check its incoming list and remove the matching id
data modify storage sa_bots:waypoint j set value 0
scoreboard players set #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
execute if score #read sab.var matches 1.. run function sa_bots:editor/utility/run_command_on_waypoint_macro with storage sa_bots:waypoint


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.outgoing[$(iplus1)] run function sa_bots:editor/waypoint_delete/interate_through_endpoints with storage sa_bots:waypoint
