#is this the one? if so, update value and exit
$execute store result score #read1 sab.var run data get entity @s data.incoming[$(i)][0]
$execute if score #read1 sab.var = #waypoint_source sab.var store result entity @s data.incoming[$(i)][3] int 1 run return run scoreboard players get #conditional sab.var
#=====


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.incoming[$(iplus1)] run function sa_bots:editor/menu/edit/update_conditional_on_target_iterate with storage sa_bots:waypoint