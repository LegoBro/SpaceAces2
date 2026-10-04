#iterate through outgoing connections and assemble data from them
data modify storage sa_bots:waypoint i set value 8
scoreboard players set #i sab.var 9
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_extended_macro_recursion with storage sa_bots:waypoint