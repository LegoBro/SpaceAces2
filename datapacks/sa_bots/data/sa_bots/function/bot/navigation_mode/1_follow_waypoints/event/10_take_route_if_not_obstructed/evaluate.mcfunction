#look up the target waypoint to see if it's obstructed
execute as @e[type=marker,tag=sab.routeSortSelf,distance=..1] run \
    function sa_bots:bot/navigation_mode/1_follow_waypoints/event/10_take_route_if_not_obstructed/check_if_obstructed with entity @s data
