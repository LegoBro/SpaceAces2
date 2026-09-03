#we will either pick the best one OR a random valid one


#more aggressive bots are likely to take the best route every time
execute store result score #random sab.var run random value 0..19
scoreboard players operation #random sab.var += @s sab.botAggression

#pick random valid
execute if score #random sab.var matches ..10 run return \
    run execute as @e[type=marker,distance=..1,tag=sab.routeValid,limit=1,sort=random] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_pick_go
#=====

#pick best
scoreboard players set #best sab.var 2147483647
scoreboard players operation #best sab.var < @e[type=marker,distance=..1,tag=sab.routeValid] sab.markDistance
execute as @e[type=marker,distance=..1,tag=sab.routeValid,sort=random] if score @s sab.markDistance <= #best sab.var run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_pick_go