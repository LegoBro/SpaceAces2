#executed by anything


#-------------------------
#party time

#run calculations on marked nodes
scoreboard players reset * sab.navCalcNextTick
scoreboard players set #nav_this_tick sab.var 0
data modify storage sa_bots:waypoint command set value "function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/evaluate_waypoint_in_sector with storage sa_bots:waypoint"
execute as @e[type=marker,tag=sab.nav_calc_next_tick] run function sa_bots:editor/nav/node_check_incoming

#nothing happened? finalize the current sector and quit out
execute if score #nav_this_tick sab.var matches 0 run \
    return run function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/finish_sector_route with storage sa_bots:waypoint
#=====
#-------------------------


#repeat until done. we need the job done on this game tick!
scoreboard players remove #nav_recursions sab.var 1
execute if score #nav_recursions sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/_sector_calc_cycle