#executed by a bot


#keep track of whether we're making progress toward our target
scoreboard players add @s sab.botTimeSinceProgress 1
function sa_bots:bot/navigation_mode/1_follow_waypoints/check_if_progress_is_being_made


#reached waypoint? pick a new one
execute if entity @s[scores={sab.botWaypointApproachX=0,sab.botWaypointApproachZ=0}] run \
    function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/decision_logic with entity @s data.move_targets[0]

#if we're stuck, try targeting a new waypoint (if that fails, we go into "roam" mode)
execute if score @s sab.botTimeSinceProgress matches 10.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/try_to_get_unstuck


#move towards target
function sa_bots:bot/navigation_mode/1_follow_waypoints/summon_move_target with entity @s data.move_targets[0]