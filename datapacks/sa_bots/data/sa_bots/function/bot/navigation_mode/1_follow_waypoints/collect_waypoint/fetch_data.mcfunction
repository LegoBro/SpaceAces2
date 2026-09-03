#executed by a waypoint


#get id
execute store result score #id sab.var run data get entity @s UUID[3]
#get sector (will be 0 if undefined or if we're a sub-route waypoint)
execute store result score #sector sab.var run data get entity @s data.sector

#debug, show id/sector
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator] ["\n","id=",{score:{name:"#id",objective:"sab.var"},color:green},"\n", \
    "sector=",{score:{name:"#sector",objective:"sab.var"},color:gold} \
    ]


#are we the one? if so, we found destination. pick a new one (we will re-run this function in a momment...)
execute if score #goal_id sab.var = #id sab.var run \
    return run execute as @e[type=mannequin,tag=sab.self,distance=..1] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/decision_reach_destination
#=====


#if we're in the same sector as the destination, we need to do a special route check
execute if score #goal_sector sab.var = #sector sab.var run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/find_best_route_within_sector
#otherwise, pick route by looking up the routes that were pre-generated already
execute unless score #goal_sector sab.var = #sector sab.var run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/find_best_route_to_sector
