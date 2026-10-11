#executed by a bot


#if we're in navigation mode 3, we will not collect a waypoint with {is_sub_route:2}. we will instead generate a new sub-target near the current one
execute if data entity @s data.move_targets[0].metadata{is_sub_route:2} if score @s sab.botNavigationMode matches 3 run return run \
    function sa_bots:bot/navigation_mode/3_stand_near_point/generate_new_sub_target with entity @s data.move_targets[0]
#=====


#remove target at the top of our stack
data remove entity @s data.move_targets[0]

#check again in nav mode 3...
execute if data entity @s data.move_targets[0].metadata{is_sub_route:2} if score @s sab.botNavigationMode matches 3 run return run \
    function sa_bots:bot/navigation_mode/3_stand_near_point/generate_new_sub_target with entity @s data.move_targets[0]
#=====

#go for the next target in line, if it exists
execute if data entity @s data.move_targets[0] run function sa_bots:bot/waypoint_nav/update_target_scores
#if no targets are left, the bot will realize this and switch to "roam" logic

#don't generate sub-targets again until we reach a primary move_target
scoreboard players set @s sab.botLookingForSubTargets -1