#executed by a waypoint


#make sure a route is generated, and also figure out what nav cache channel we should be using
scoreboard players set #use_channel sab.var 0
function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/_start_sector_search

#Q: what's a nav cache channel?
#A: basically it's a route to reach some waypoint from anywhere in the same sector.
#   these are not pre-generated like the routes between sectors
#   they are instead generated on the fly
#   BUT i decided it would be good to hold the last 20 routes we generated like this in memory
#   because 1) the same bot will call on it multiple times
#       and 2) multiple bots may be going after the same waypoint


#nav cache channel argument for later
execute store result storage sa_bots:waypoint channel int 1 run scoreboard players get #use_channel sab.var

#iterate through outgoing connections and assemble data from them
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute store result storage sa_bots:waypoint nav_index int 1 run scoreboard players get #goal_sector sab.var
data modify storage sa_bots:waypoint command set value "function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/outgoing_path_within_sector_get_destination_data with storage sa_bots:waypoint"
execute if data entity @s data.outgoing[0] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/outgoing_paths_iterate with storage sa_bots:waypoint

#also figure out what our distance to destination is for comparison
function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/get_waypoint_nav_info_from_cache

#debug, bot remembers what nav cache channel it used
scoreboard players operation @e[type=mannequin,tag=sab.self,distance=..1] sab.usingNavCacheChanel = #use_channel sab.var