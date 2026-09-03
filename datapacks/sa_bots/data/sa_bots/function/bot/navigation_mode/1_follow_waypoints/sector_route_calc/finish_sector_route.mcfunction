#executed by anything
#executed with storage sa_bots:waypoint
#$(waypoint_target) = int id of the target entity
#$(channel) = the nav cache channel we used


#must do a second pass for unconditional
execute if score #nav_calc_phase sab.var matches 0 run \
    return run function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/_start_second_phase
#=====

#reset calc objective
scoreboard players reset * sab.navCalc
scoreboard players reset * sab.navCalcNextTick

#clear variables
scoreboard players reset #nav_calc_sector sab.var
scoreboard players reset #nav_calc_sector_progress sab.var
scoreboard players reset #nav_this_tick sab.var
scoreboard players reset #nav_total_count sab.var
scoreboard players reset #nav_show_output sab.var

#log what channel is pointing to our node
$data remove storage sa_bots:waypoint sector_nav_cache[{channel:$(channel)}]
$data modify storage sa_bots:waypoint sector_nav_cache append value {target:$(waypoint_target),channel:$(channel)}