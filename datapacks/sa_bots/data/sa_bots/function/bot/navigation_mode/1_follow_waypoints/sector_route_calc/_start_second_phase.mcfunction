#reset variables
scoreboard players set #nav_calc_sector_progress sab.var 0
scoreboard players set #nav_calc_phase sab.var 1

#we're going to generate a route starting from our destination node
execute store result storage sa_bots:waypoint nav_index int 1 run scoreboard players get #goal_sector sab.var
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get #goal_id sab.var
function sa_uuid4:convert
data modify storage sa_bots:waypoint waypoint_target_string set from storage uuid:out plain
function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/prepare_for_first_cycle with storage sa_bots:waypoint


#alright, go for it
execute store result storage sa_bots:waypoint waypoint_target int 1 run scoreboard players get #goal_id sab.var
function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/_sector_calc_cycle_unconditional