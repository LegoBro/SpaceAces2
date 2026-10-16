scoreboard players set #found_destination sab.var 0

#pick a waypoint near the control point
execute store result score #random sab.var run random value 1..2
execute if score #random sab.var matches 1 at @e[type=marker,tag=gamemode.setback.active_point,limit=1,sort=random] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..10] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #random sab.var matches 2 at @e[type=marker,tag=gamemode.setback.active_point,limit=1,sort=random] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..10] run function sa_bots:bot/utility/waypoint_get_id_and_sector

#fallback 1: random waypoint, but stay on this task
execute if score #found_destination sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector


#think again in 2 seconds
scoreboard players set @s sab.botNavThinkTime 40

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
