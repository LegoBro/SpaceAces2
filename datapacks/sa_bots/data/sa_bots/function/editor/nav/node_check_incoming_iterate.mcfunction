#executed by the source waypoint


#get distance to target (already pre-calculated and stored on incoming connection struct)
$execute store result score #distance sab.var run data get entity @s data.incoming[$(i)][2]
#now add to our own distance to sector which was calculated before
scoreboard players operation #distance sab.var += @s sab.navCalc

#is this a conditional connection? if so, ignore it.
$execute store result score #read sab.var run data get entity @s data.incoming[$(i)][3]

#run evaluation on the waypoint at index i
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.incoming[$(i)][1]
execute unless score #read sab.var matches 1 run function sa_bots:editor/utility/run_command_as_waypoint_macro with storage sa_bots:waypoint


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.incoming[$(iplus1)] run function sa_bots:editor/nav/node_check_incoming_iterate with storage sa_bots:waypoint