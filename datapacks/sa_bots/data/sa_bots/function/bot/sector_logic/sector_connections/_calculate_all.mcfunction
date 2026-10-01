#we will only run this if exactly 1 level is loaded
scoreboard players set #success sab.var 1
execute as @e[type=marker,tag=sab.botWaypointGeneric,limit=1] at @s \
    if entity @e[type=marker,tag=sab.botWaypointGeneric,distance=400..] run scoreboard players set #success sab.var 0
execute if score #success sab.var matches 0 run return fail
#=====

#all waypoints tagged as sector borders will work to assemble a table that shows which sectors are connected
execute as @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector_is_border] run function sa_bots:bot/sector_logic/sector_connections/waypoint_log_connections

#calculations are done. don't do this again
scoreboard players set #calculate_sector_connections sab.var 1000000