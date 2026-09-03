#executed by the waypoint we want to delete


#re-use clear function
function sa_bots:editor/tools/clear/waypoint_clear_connections

#now remove this node
tag @s remove sab.botWaypoint
scoreboard players reset @s
scoreboard players set @s sab.lifespan 0