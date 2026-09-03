#executed by a bot


#move_targets should be an empty list
data modify entity @s data.move_targets set value []

#check the 5 nearest waypoints, and pick the nearest one we can walk to
scoreboard players set #found_target sab.var 0
execute as @e[type=marker,tag=sab.botWaypointGeneric,limit=5,sort=nearest,distance=..40] run function sa_bots:bot/waypoint_nav/check_if_valid_path_to_waypoint

#adopt target coordinates
execute if score #found_target sab.var matches 1.. run \
    data modify entity @s data.move_targets prepend from storage sa_bots:generic target
#if we didn't target anything, that's okay. the "roam" movement behavior will take over

#move target coordinates into scoreboard so we can access it cheaper each tick
execute if score #found_target sab.var matches 1.. run function sa_bots:bot/waypoint_nav/update_target_scores

#clean up tag
tag @e[type=marker,tag=sab.invalidPath,distance=..40] remove sab.invalidPath


#return a random value for sab.botWPSearchCooldown to adopt
return run random value 8..16