#if we read a 0, that's an undefined endpoint!
$execute store result score #read sab.var run data get entity @s data.outgoing[$(i)][3][0]
execute if score #read sab.var matches 0 run scoreboard players add #error_found sab.var 1


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.outgoing[$(iplus1)] run function sa_bots:editor/tools/edit/subroute/source_check_endpoints_iterate with storage sa_bots:waypoint
