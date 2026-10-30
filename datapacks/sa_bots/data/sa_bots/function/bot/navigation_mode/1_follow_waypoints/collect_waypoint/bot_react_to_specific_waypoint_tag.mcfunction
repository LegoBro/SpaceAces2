#executed by a bot after collecting a waypoint while looking for a special tag


#1 = build turret
execute if score #look_for_waypoint_tag sab.var matches 100001 run tag @s add sab.botBuildNow
#2 = hold sniper spot
$execute if score #look_for_waypoint_tag sab.var matches 100002 at b-0-0-0-$(remember_uuid4) run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/3_sniper_hold_sniper_spot
#3 = hold vantage point for explosive class
$execute if score #look_for_waypoint_tag sab.var matches 100003 at b-0-0-0-$(remember_uuid4) run function sa_bots:bot/navigation_mode/1_follow_waypoints/destination_action/5_explosive_class_hold_vantage_point
#...

#did the thing! bot can stop looking, now
scoreboard players set @s sab.botLookingForWaypointTag 0