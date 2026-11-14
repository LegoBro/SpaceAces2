#executed by bot entity
#we will either pick the best one OR a random valid one

#note: this will always be run if the bot is currently collecting a sub-route node


#more aggressive bots are likely to take the best route every time
execute store result score #random sab.var run random value 0..19
scoreboard players operation #random sab.var += @s sab.botAggression

#always go random if we just collected a sub-route waypoint or undefined sector waypoint
execute if score #collected_waypoint_sector sab.var matches 0 run scoreboard players set #random sab.var 0

#always go random if we're avoiding the destination
execute if entity @s[tag=sab.botRunAwayFromDestination] run scoreboard players set #random sab.var 0

#if on a sub-route waypoint or undefined sector waypoint, try to avoid backtracking
scoreboard players operation #get_id sab.var = @s sab.botLastCollectedUUID
execute if score #collected_waypoint_sector sab.var matches 0 if score #count_valid sab.var matches 2.. \
    as @e[type=marker,distance=..1,tag=sab.routeValid] if score @s sab.markId = #get_id sab.var run tag @s remove sab.routeValid

#pick random valid
execute if score #random sab.var matches ..10 run return \
    run execute as @e[type=marker,distance=..1,tag=sab.routeValid,limit=1,sort=random] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_pick_go
#=====

#pick best
scoreboard players set #best sab.var 2147483647
scoreboard players operation #best sab.var < @e[type=marker,distance=..1,tag=sab.routeValid] sab.markDistance
execute as @e[type=marker,distance=..1,tag=sab.routeValid,sort=random] if score @s sab.markDistance <= #best sab.var run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_pick_go