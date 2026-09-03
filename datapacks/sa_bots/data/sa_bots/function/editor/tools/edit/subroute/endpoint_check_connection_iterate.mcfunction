#executed by target waypoint
#executed with storage sa_bots:waypoint
#"#waypoint sab.var" is the id we're looking to validate


scoreboard players set #read1 sab.var 0
$execute if data entity @s data.outgoing[$(j)][3][0] store result score #read1 sab.var run data get entity @s data.outgoing[$(j)][3][0]
#if we find the connection somewhere, there is no error
execute if score #read1 sab.var = #waypoint sab.var run return run scoreboard players set #error_found sab.var 0
#=====


#recursion until the end of the list
execute store result storage sa_bots:waypoint j int 1 run scoreboard players get #j sab.var
scoreboard players add #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
$execute if data entity @s data.outgoing[$(jplus1)] run function sa_bots:editor/tools/edit/subroute/endpoint_check_connection_iterate with storage sa_bots:waypoint