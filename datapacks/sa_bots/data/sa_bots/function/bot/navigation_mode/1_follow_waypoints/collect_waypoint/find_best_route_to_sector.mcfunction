#executed by a waypoint


#for all outgoing connections, we must determine
#1) which ones are usable and get us closer to our destination
#2) which one is the best (we may or may not choose the best)


#iterate through outgoing connections and assemble data from them
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute store result storage sa_bots:waypoint nav_index int 1 run scoreboard players get #goal_sector sab.var
data modify storage sa_bots:waypoint command set value "function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/outgoing_path_get_destination_data with storage sa_bots:waypoint"
execute if data entity @s data.outgoing[0] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/outgoing_paths_iterate with storage sa_bots:waypoint

#also figure out what our distance to destination is for comparison
function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/get_waypoint_nav_info_from_data