#find events that exist
$execute store result score #set_event sab.var run data get entity @s data.outgoing[$(i)][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

#keep going until we reach the end
data modify storage sa_bots:waypoint i set from storage sa_bots:waypoint iplus1
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.outgoing[$(iplus1)] run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_extended_macro_recursion with storage sa_bots:waypoint