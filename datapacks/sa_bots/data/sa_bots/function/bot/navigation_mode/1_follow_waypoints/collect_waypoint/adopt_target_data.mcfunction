#executed by a bot entity


#clear tags
function sa_bots:bot/navigation_mode/1_follow_waypoints/event/clear_old_event_stuff

#exit out now if we don't want to update move_targets
execute if entity @s[tag=sab.doNotUpdateMoveTarget] run \
    return run tag @s remove sab.doNotUpdateMoveTarget
#=====

#adopt data and scores from recently decided-upon target
data remove entity @s data.move_targets[0]
data modify entity @s data.move_targets prepend from storage sa_bots:generic target
function sa_bots:bot/waypoint_nav/update_target_scores
