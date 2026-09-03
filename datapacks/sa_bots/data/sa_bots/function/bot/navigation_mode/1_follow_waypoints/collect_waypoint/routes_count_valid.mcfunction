#executed by a marker representing one of the possible routes


#debug, show route information
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator] ["  ","sab.markIndex=",{score:{name:"@s",objective:"sab.markIndex"}},"  ","sab.markDistance=",{score:{name:"@s",objective:"sab.markDistance"}}]

#event attached? evaluate if the bot can do it
#if not, we return and take ourselves out of the running
execute if score @s sab.markEvent matches 1.. \
    unless function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/route_evaluate_event run \
    return run tag @s remove sab.routeSort
#=====

#valid route if we get the bot closer to the destination
execute if score @s sab.markDistance < #distance_at_this_waypoint sab.var run tag @s add sab.routeValid
execute if score @s sab.markDistance < #distance_at_this_waypoint sab.var run scoreboard players add #count_valid sab.var 1

#count all routes
scoreboard players add #count sab.var 1