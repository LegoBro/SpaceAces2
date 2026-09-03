#pick a completely random waypoint
execute as @e[type=marker,tag=sab.botWaypointGeneric,limit=1,sort=random] run function sa_bots:bot/utility/waypoint_get_id_and_sector

#set id and sector from storage
data modify entity @s data.destinations set value []
data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint