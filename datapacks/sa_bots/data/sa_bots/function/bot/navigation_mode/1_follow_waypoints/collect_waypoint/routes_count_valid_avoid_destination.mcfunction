#executed by a marker representing one of the possible routes


#debug, show route information
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator,distance=..3] ["  ","sab.markIndex=",{score:{name:"@s",objective:"sab.markIndex"}},"  ","sab.markDistance=",{score:{name:"@s",objective:"sab.markDistance"}}]

#event attached? evaluate if the bot can do it
#if not, we return and take ourselves out of the running
execute if score @s sab.markEvent matches 1.. \
    unless function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_evaluate_event run \
    return run tag @s remove sab.routeSort
#=====

#take ourselves out of the running if we're forcing subroutes and we're not a subroute
execute if score #force_subroute sab.var matches 1 if score #connected_subroutes sab.var matches 1.. \
    unless entity @s[tag=sab.markSubRoute] run \
    return run tag @s remove sab.routeSort
#=====

#valid route if we get the bot further from the destination
execute if score @s sab.markDistance > #distance_at_this_waypoint sab.var run tag @s add sab.routeValid
execute if score @s sab.markDistance > #distance_at_this_waypoint sab.var run scoreboard players add #count_valid sab.var 1

#count all routes
scoreboard players add #count sab.var 1