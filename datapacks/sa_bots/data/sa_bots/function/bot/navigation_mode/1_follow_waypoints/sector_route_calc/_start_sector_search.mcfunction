#first, check if the route we're looking at has already been generated
execute store result storage sa_bots:generic id int 1 run scoreboard players get #goal_id sab.var
execute store result score #use_channel sab.var run function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/check_if_target_already_cached with storage sa_bots:generic
#if so, get our channel and leave
execute if score #use_channel sab.var matches 1.. run \
    return 1
#=====


#if not generated already, we're gonna have some FUN

#find a new channel to generate stuff in
scoreboard players add #sector_nav_cache_channel sab.var 1
execute if score #sector_nav_cache_channel sab.var matches 21.. run scoreboard players set #sector_nav_cache_channel sab.var 1
#remember what channel that was
scoreboard players operation #use_channel sab.var = #sector_nav_cache_channel sab.var
execute store result storage sa_bots:waypoint channel int 1 run scoreboard players get #use_channel sab.var
#reset everything in the cache
#regular
execute if score #use_channel sab.var matches 1 run scoreboard players reset * sab.navSectorCacheChannel1
execute if score #use_channel sab.var matches 2 run scoreboard players reset * sab.navSectorCacheChannel2
execute if score #use_channel sab.var matches 3 run scoreboard players reset * sab.navSectorCacheChannel3
execute if score #use_channel sab.var matches 4 run scoreboard players reset * sab.navSectorCacheChannel4
execute if score #use_channel sab.var matches 5 run scoreboard players reset * sab.navSectorCacheChannel5
execute if score #use_channel sab.var matches 6 run scoreboard players reset * sab.navSectorCacheChannel6
execute if score #use_channel sab.var matches 7 run scoreboard players reset * sab.navSectorCacheChannel7
execute if score #use_channel sab.var matches 8 run scoreboard players reset * sab.navSectorCacheChannel8
execute if score #use_channel sab.var matches 9 run scoreboard players reset * sab.navSectorCacheChannel9
execute if score #use_channel sab.var matches 10 run scoreboard players reset * sab.navSectorCacheChannel10
execute if score #use_channel sab.var matches 11 run scoreboard players reset * sab.navSectorCacheChannel11
execute if score #use_channel sab.var matches 12 run scoreboard players reset * sab.navSectorCacheChannel12
execute if score #use_channel sab.var matches 13 run scoreboard players reset * sab.navSectorCacheChannel13
execute if score #use_channel sab.var matches 14 run scoreboard players reset * sab.navSectorCacheChannel14
execute if score #use_channel sab.var matches 15 run scoreboard players reset * sab.navSectorCacheChannel15
execute if score #use_channel sab.var matches 16 run scoreboard players reset * sab.navSectorCacheChannel16
execute if score #use_channel sab.var matches 17 run scoreboard players reset * sab.navSectorCacheChannel17
execute if score #use_channel sab.var matches 18 run scoreboard players reset * sab.navSectorCacheChannel18
execute if score #use_channel sab.var matches 19 run scoreboard players reset * sab.navSectorCacheChannel19
execute if score #use_channel sab.var matches 20 run scoreboard players reset * sab.navSectorCacheChannel20
#unconditional
execute if score #use_channel sab.var matches 1 run scoreboard players reset * sab.navSectorCacheChannelUC1
execute if score #use_channel sab.var matches 2 run scoreboard players reset * sab.navSectorCacheChannelUC2
execute if score #use_channel sab.var matches 3 run scoreboard players reset * sab.navSectorCacheChannelUC3
execute if score #use_channel sab.var matches 4 run scoreboard players reset * sab.navSectorCacheChannelUC4
execute if score #use_channel sab.var matches 5 run scoreboard players reset * sab.navSectorCacheChannelUC5
execute if score #use_channel sab.var matches 6 run scoreboard players reset * sab.navSectorCacheChannelUC6
execute if score #use_channel sab.var matches 7 run scoreboard players reset * sab.navSectorCacheChannelUC7
execute if score #use_channel sab.var matches 8 run scoreboard players reset * sab.navSectorCacheChannelUC8
execute if score #use_channel sab.var matches 9 run scoreboard players reset * sab.navSectorCacheChannelUC9
execute if score #use_channel sab.var matches 10 run scoreboard players reset * sab.navSectorCacheChannelUC10
execute if score #use_channel sab.var matches 11 run scoreboard players reset * sab.navSectorCacheChannelUC11
execute if score #use_channel sab.var matches 12 run scoreboard players reset * sab.navSectorCacheChannelUC12
execute if score #use_channel sab.var matches 13 run scoreboard players reset * sab.navSectorCacheChannelUC13
execute if score #use_channel sab.var matches 14 run scoreboard players reset * sab.navSectorCacheChannelUC14
execute if score #use_channel sab.var matches 15 run scoreboard players reset * sab.navSectorCacheChannelUC15
execute if score #use_channel sab.var matches 16 run scoreboard players reset * sab.navSectorCacheChannelUC16
execute if score #use_channel sab.var matches 17 run scoreboard players reset * sab.navSectorCacheChannelUC17
execute if score #use_channel sab.var matches 18 run scoreboard players reset * sab.navSectorCacheChannelUC18
execute if score #use_channel sab.var matches 19 run scoreboard players reset * sab.navSectorCacheChannelUC19
execute if score #use_channel sab.var matches 20 run scoreboard players reset * sab.navSectorCacheChannelUC20

#reset variables
scoreboard players operation #nav_calc_sector sab.var = #goal_sector sab.var
scoreboard players set #nav_calc_sector_progress sab.var 0
scoreboard players set #nav_total_count sab.var 0
scoreboard players operation #nav_recursions sab.var = #MAX_NAV_CYCLES_WITHIN_SECTOR sab.var
scoreboard players set #nav_calc_phase sab.var 0

#we're going to generate a route starting from our destination node
execute store result storage sa_bots:waypoint nav_index int 1 run scoreboard players get #goal_sector sab.var
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get #goal_id sab.var
function sa_uuid4:convert
data modify storage sa_bots:waypoint waypoint_target_string set from storage uuid:out plain
function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/prepare_for_first_cycle with storage sa_bots:waypoint


#alright, go for it
execute store result storage sa_bots:waypoint waypoint_target int 1 run scoreboard players get #goal_id sab.var
function sa_bots:bot/navigation_mode/1_follow_waypoints/sector_route_calc/_sector_calc_cycle