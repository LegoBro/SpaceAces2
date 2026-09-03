#executed by the waypoint we're validating
#executed with storage sa_bots:waypoint

#we will remove connections if
# 1: they are subroute origin references
# 2: the source waypoint exists
# 3: the source waypoint no longer references us

#immediately remove this incoming connection if it was marked for deletion
$execute store result score #read sab.var run data get entity @s data.incoming[$(i)][0]
execute if score #read sab.var matches 0 run scoreboard players set #count sab.var -1
$execute if score #read sab.var matches 0 run return run data remove entity @s data.incoming[$(i)]
#=====


#track if we find an issue
scoreboard players set #error_found sab.var 1
#track if target exists
scoreboard players set #test sab.var 0

#access the waypoint at index i
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.incoming[$(i)][1]
#don't bother if this connection isn't marked as a subroute origin reference
scoreboard players set #read sab.var 0
$execute if data entity @s data.incoming[$(i)][4] store result score #read sab.var run data get entity @s data.incoming[$(i)][4]
execute if score #read sab.var matches 1.. run scoreboard players add #count sab.var 1
#now make this target waypoint check its outgoing list to see if there's an endpoint reference for us
data modify storage sa_bots:waypoint j set value 0
scoreboard players set #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
execute if score #read sab.var matches 1.. run function sa_bots:editor/tools/edit/subroute/endpoint_run_command_on_waypoint_macro with storage sa_bots:waypoint

#remove incoming connection if error was found
$execute if score #read sab.var matches 1.. if score #test sab.var matches 1 if score #error_found sab.var matches 1.. run return run data remove entity @s data.incoming[$(i)]
#=====


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.incoming[$(iplus1)] run function sa_bots:editor/tools/edit/subroute/endpoint_check_source_iterate with storage sa_bots:waypoint
