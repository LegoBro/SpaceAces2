scoreboard players set #found_destination sab.var 0

#figure out what sector the active control point is in
scoreboard players set #sector sab.var 0
execute at @e[type=pig,tag=gamemode.payload,limit=1,sort=random] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..20] \
    if data entity @s data.sector store result score #sector sab.var run data get entity @s data.sector

#pick a random waypoint from the sector we want to go to
execute if score #sector sab.var matches 1 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.1] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 2 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.2] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 3 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.3] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 4 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.4] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 5 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.5] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 6 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.6] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 7 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.7] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 8 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.8] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 9 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.9] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 10 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.10] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 11 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.11] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 12 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.12] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 13 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.13] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 14 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.14] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 15 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.15] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 16 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=3..200,tag=sab.sector.16] run function sa_bots:bot/utility/waypoint_get_id_and_sector

#if we found a valid target: don't think again for a long time
execute if score #found_destination sab.var matches 1 run scoreboard players set @s sab.botNavThinkTime 4000

#fallback 1: random nearby waypoint, but stay on this task and think again soon
execute if score #found_destination sab.var matches 0 run scoreboard players set @s sab.botNavThinkTime 40
execute if score #found_destination sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..30] run function sa_bots:bot/utility/waypoint_get_id_and_sector


#don't remember previous destination
scoreboard players set @s sab.botLastDestinationUUID -1

#set id and sector from storage
execute if score #found_destination sab.var matches 1 run data modify entity @s data.destinations set value []
execute if score #found_destination sab.var matches 1 run data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint

#internalize destination id as score
execute if score #found_destination sab.var matches 1 store result score @s sab.botDestinationUUID run data get entity @s data.destinations[0].id

#fallback 2: go after a random enemy
scoreboard players set #destination_action sab.var 0
execute if score #found_destination sab.var matches 0 run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:15}
