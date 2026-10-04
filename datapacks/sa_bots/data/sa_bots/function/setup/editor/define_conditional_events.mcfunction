#returns 1 if conditional
#returns 0 if not conditional

#"conditional" events will cause bots to pathfind differently
#(i.e. they will only seek conditional paths if they are capable of doing so)

#!! NOTE !!
#if any changes are made here, there should also be be changes made in:
#"function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint_event"


#no event
execute if score #read sab.var matches 0 run return 0

#event
execute if score #read sab.var matches 1 run return 0
execute if score #read sab.var matches 2 run return 1
execute if score #read sab.var matches 3 run return 1
execute if score #read sab.var matches 4 run return 1
execute if score #read sab.var matches 5 run return 1
execute if score #read sab.var matches 6 run return 1
execute if score #read sab.var matches 7 run return 1
execute if score #read sab.var matches 8 run return 1
execute if score #read sab.var matches 9 run return 1
execute if score #read sab.var matches 10 run return 1