#executed by target waypoint
#executed with storage sa_bots:waypoint


#read data at index
$execute store result score #read sab.var run data get entity @s data.incoming[$(i)][0]
#delete and exit out if there's a match
$execute if score #read sab.var = #waypoint_source sab.var run return run data remove entity @s data.incoming[$(i)]
#=====

#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.incoming[$(iplus1)] run function sa_bots:editor/tools/edit/subroute/remove_incoming_id_iterate with storage sa_bots:waypoint