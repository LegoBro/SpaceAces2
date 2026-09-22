#executes the leap slam ability
#(must be handled differently since bots can't use player motion library)

#apply motion
#scoreboard players operation $strength player_motion.api.launch = class.brawler.1.jump_power Numbers
execute at @s rotated ~ ~-42 run function sa_bots:bot/player_motion_alternative/api/launch_looking


#forget movement target, target the waypoint nearest to the target

#clear move_taget list
function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets
#find nearest waypoint to target
scoreboard players set #found_target sab.var 0
scoreboard players operation #get_id sab.var = @s sab.botTargetEntityID
execute if score #get_id sab.var matches 1.. as @e[type=#projectile:has_hb,tag=hb,scores={sab.entityTargetingID=1..},distance=..70] if score @s sab.entityTargetingID = #get_id sab.var run tag @s add sab.possibleLeapTarget
execute at @e[type=#projectile:has_hb,tag=sab.possibleLeapTarget,limit=1,sort=furthest] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..12] run function sa_bots:bot/waypoint_nav/get_waypoint_target_struct
tag @e[type=#projectile:has_hb,tag=sab.possibleLeapTarget,distance=..70] remove sab.possibleLeapTarget

#if we found a waypoint, go at it
execute if score #found_target sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/adopt_target_data
execute if score #found_target sab.var matches 1.. run scoreboard players set @s sab.botNavigationMode 1