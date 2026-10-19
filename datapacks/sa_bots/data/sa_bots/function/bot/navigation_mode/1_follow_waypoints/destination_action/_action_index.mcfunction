#executed by bot


#1 = build turret
execute if score #action sab.var matches 1 run tag @s add sab.botBuildNow
#2 = take subroute to reach turret spot
execute if score #action sab.var matches 2 run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/2_take_subroute_to_reach_turret_spot
#3 = sniper holds a point for a while
execute if score #action sab.var matches 3 run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/3_sniper_hold_sniper_spot
#4 = take subroute to reach sniper spot
execute if score #action sab.var matches 4 run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/4_take_subroute_to_reach_sniper_spot
#5 = vantage point for explosive class
execute if score #action sab.var matches 5 run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/5_explosive_class_hold_vantage_point
#6 = take subroute to reach explosive vantage point
execute if score #action sab.var matches 6 run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/6_take_subroute_to_reach_explosive_vantage_point

#...