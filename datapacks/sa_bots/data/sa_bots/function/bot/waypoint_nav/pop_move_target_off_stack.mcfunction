#executed by a bot


#remove target at the top of our stack
data remove entity @s data.move_targets[0]

#go for the next target in line, if it exists
execute if data entity @s data.move_targets[0] run function sa_bots:bot/waypoint_nav/update_target_scores
#if no targets are left, the bot will realize this and switch to "roam" logic

#don't generate sub-targets again until we reach a primary move_target
scoreboard players set @s sab.botLookingForSubTargets -1