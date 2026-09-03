#pick a route randomly


#debug, say if picked randomly
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator] {translate:"sa_bot.debug.picked_randomly",color:red}

#pick random
execute as @e[type=marker,distance=..1,tag=sab.routeSort,limit=1,sort=random] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_pick_go