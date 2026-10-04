#we will only run this if exactly 1 level is loaded
scoreboard players set #success sab.var 1
execute as @e[type=marker,tag=sab.botWaypointGeneric,limit=1] at @s \
    if entity @e[type=marker,tag=sab.botWaypointGeneric,distance=400..] run scoreboard players set #success sab.var 0
execute if score #success sab.var matches 0 run return fail
#=====

#check for important stuff on all waypoints
execute as @e[type=marker,tag=sab.botWaypointGeneric] run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint

#calculations are done. don't do this again
scoreboard players set #calculate_sector_connections sab.var 1000000