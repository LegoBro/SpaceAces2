#we will use open nav, but only if it gets us betters results than unconditional nav


execute if score #distance_at_this_waypoint_open sab.var < #distance_at_this_waypoint_uc sab.var run scoreboard players set #var sab.var 3