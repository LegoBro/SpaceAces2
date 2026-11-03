#executed by a bot entity


#clear tags
function sa_bots:bot/navigation_mode/1_follow_waypoints/event/clear_old_event_stuff

#if we're grounded, we might try lerping our move angle if there's enough ground near us
scoreboard players set @s sab.botMovementYawLerpTime 0
execute if score @s sab.groundedTime matches 2.. \
    if function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/check_if_nearby_ground_is_safe run \
    scoreboard players set @s sab.botMovementYawLerpTime 16

#exit out now if we don't want to update move_targets
execute if entity @s[tag=sab.doNotUpdateMoveTarget] run \
    return run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/skip_updating_movement_target
#=====

#adopt data and scores from recently decided-upon target
data remove entity @s data.move_targets[0]
data modify entity @s data.move_targets prepend from storage sa_bots:generic target
function sa_bots:bot/waypoint_nav/update_target_scores
