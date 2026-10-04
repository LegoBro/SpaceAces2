#executed by a bot waypoint (no sub-routes!)


#find sector connections
execute if entity @s[tag=sab.sector_is_border] run function sa_bots:bot/sector_logic/sector_connections/waypoint_log_connections

#must have sector
execute unless data entity @s data.sector run return 0
#=====

#find events that exist
#(not using macros and recursion, yet! too expensive)
execute store result score #set_event sab.var run data get entity @s data.outgoing[0][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

execute store result score #set_event sab.var run data get entity @s data.outgoing[1][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

execute store result score #set_event sab.var run data get entity @s data.outgoing[2][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

#do we have 4+ connections? do more checks...
execute if data entity @s data.outgoing[3] run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_extended
