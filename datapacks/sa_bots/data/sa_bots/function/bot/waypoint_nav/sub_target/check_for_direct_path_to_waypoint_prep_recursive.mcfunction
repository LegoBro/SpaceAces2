#executed by bot entity

#ok to start on solid blocks or water
execute unless block ~ ~-1 ~ #sa_bots:not_solid_exclude_water run \
    return run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint with entity @s data.move_targets[0]
#=====

#raycast down until we hit the ground
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches 1.. positioned ~ ~-1 ~ run \
    function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_prep_recursive