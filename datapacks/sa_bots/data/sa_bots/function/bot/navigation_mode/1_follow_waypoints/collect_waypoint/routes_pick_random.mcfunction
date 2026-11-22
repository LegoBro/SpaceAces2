#executed by bot entity

#pick a route randomly


#debug, say if picked randomly
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator,distance=..3] {translate:"sa_bot.debug.picked_randomly",color:red}

#if on a sub-route waypoint or undefined sector waypoint, try to avoid backtracking
scoreboard players operation #get_id sab.var = @s sab.botLastCollectedUUID
execute if score #collected_waypoint_sector sab.var matches 0 if score #count sab.var matches 2.. \
    as @e[type=marker,distance=..1,tag=sab.routeSort] if score @s sab.markId = #get_id sab.var run tag @s add sab.routeBanned

#pick random
execute as @e[type=marker,distance=..1,tag=sab.routeSort,tag=!sab.routeBanned,tag=!sab.markAvoidWaypoint,limit=1,sort=random] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_pick_go