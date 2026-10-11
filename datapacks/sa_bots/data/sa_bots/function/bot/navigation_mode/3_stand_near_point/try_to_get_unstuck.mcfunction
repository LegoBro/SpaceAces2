#remove all sub-targets from the stack
execute if data entity @s data.move_targets[0] unless data entity @s data.move_targets[0].metadata{is_sub_route:0} run data remove entity @s data.move_targets[0]
execute if data entity @s data.move_targets[0] unless data entity @s data.move_targets[0].metadata{is_sub_route:0} run data remove entity @s data.move_targets[0]

#get ready to track progress towards waypoint again
scoreboard players set @s sab.botTimeSinceProgress 0

#clear temporary tags
tag @s[tag=sab.botIsSnipingAtSniperSpot] remove sab.botIsSnipingAtSniperSpot

#return to following waypoints if we still have a move target in the stack
execute if data entity @s data.move_targets[0] run scoreboard players set @s sab.botNavigationMode 1
execute if data entity @s data.move_targets[0] run return run function sa_bots:bot/waypoint_nav/update_target_scores
#=====

#if no move target exists, go into "roam" mode
execute if score @s sab.botSkill matches ..4 run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets
execute if score @s sab.botSkill matches 5.. run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately