#executed by bot


#1 = build turret
execute if score #action sab.var matches 1 run tag @s add sab.botBuildNow
#2 = take subroute to reach turret spot
execute if score #action sab.var matches 2 run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/2_take_subroute_to_reach_turret_spot
#3 = sniper holds a point for a while
execute if score #action sab.var matches 2 run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/sniper_hold_sniper_spot
#...