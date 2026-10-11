#executed by a bot


#keep track of whether we're making progress toward our target
scoreboard players add @s sab.botTimeSinceProgress 1
function sa_bots:bot/navigation_mode/1_follow_waypoints/check_if_progress_is_being_made

#reached waypoint? pick a new one
execute if entity @s[scores={sab.botWaypointApproachX=0,sab.botWaypointApproachZ=0}] run \
    function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/decision_logic with entity @s data.move_targets[0]

#if we're stuck, remove all sub-targets and return to following waypoints
execute if entity @s[scores={sab.botTimeSinceProgress=30..,sab.airTime=..0}] run function sa_bots:bot/navigation_mode/3_stand_near_point/try_to_get_unstuck
execute if entity @s[scores={sab.botTimeSinceProgress=80..,sab.airTime=1..}] run function sa_bots:bot/navigation_mode/3_stand_near_point/try_to_get_unstuck
#always exit this mode when our object check time runs out
execute if entity @s[scores={sab.botObjectCheckTime=..0}] run function sa_bots:bot/navigation_mode/3_stand_near_point/try_to_get_unstuck
#if sniping, we will exit this mode if the enemy we're shooting at gets within 14m
execute if entity @s[tag=sab.botIsSnipingAtSniperSpot,scores={sab.botTargetEntityID=1..,sab.botTargetEntityDistance=..14}] run function sa_bots:bot/navigation_mode/3_stand_near_point/try_to_get_unstuck

#move towards target
function sa_bots:bot/navigation_mode/1_follow_waypoints/summon_move_target with entity @s data.move_targets[0]