#executed by a bot after collecting a waypoint while looking for a special tag


#1 = build turret
execute if score #look_for_waypoint_tag sab.var matches 100001 run tag @s add sab.botBuildNow
#...

#did the thing! bot can stop looking, now
scoreboard players set @s sab.botLookingForWaypointTag 0