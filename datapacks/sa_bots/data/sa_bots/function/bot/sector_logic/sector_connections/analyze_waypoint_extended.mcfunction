#find events that exist
#(not using macros and recursion, here! too expensive)
execute store result score #set_event sab.var run data get entity @s data.outgoing[3][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

execute store result score #set_event sab.var run data get entity @s data.outgoing[4][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

execute store result score #set_event sab.var run data get entity @s data.outgoing[5][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

execute store result score #set_event sab.var run data get entity @s data.outgoing[6][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

execute store result score #set_event sab.var run data get entity @s data.outgoing[7][2][0]
execute if score #set_event sab.var matches 1.. run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event with entity @s data

#do we have 9+ connections? do more checks...
execute if data entity @s data.outgoing[8] run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_extended_macro
