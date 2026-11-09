#executed by waypoint that a bot is collecting


#if we get a match, add 100000 to the scoreboard and the bot will interpret that later down the line


#note: #look_for_waypoint_tag sab.var = <bot> sab.botLookingForWaypointTag

# 1 = build turret
execute if score #look_for_waypoint_tag sab.var matches 1 if entity @s[tag=wp.turretSpot] run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data_found_specific_tag
execute if score #look_for_waypoint_tag sab.var matches 1 if entity @s[tag=wp.turretSpot.blue] run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data_found_specific_tag
execute if score #look_for_waypoint_tag sab.var matches 1 if entity @s[tag=wp.turretSpot.red] run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data_found_specific_tag

# 2 = sniper at sniper spot
execute if score #look_for_waypoint_tag sab.var matches 2 if entity @s[tag=wp.sniperSpot] run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data_found_specific_tag
execute if score #look_for_waypoint_tag sab.var matches 2 if entity @s[tag=wp.sniperSpot.blue] run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data_found_specific_tag
execute if score #look_for_waypoint_tag sab.var matches 2 if entity @s[tag=wp.sniperSpot.red] run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data_found_specific_tag

# 3 = explosive class vantage point
execute if score #look_for_waypoint_tag sab.var matches 3 if entity @s[tag=wp.explosiveVantagePoint] run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data_found_specific_tag

#...