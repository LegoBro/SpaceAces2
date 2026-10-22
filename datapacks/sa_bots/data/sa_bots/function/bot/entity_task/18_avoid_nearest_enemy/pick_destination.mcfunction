scoreboard players set #found_destination sab.var 0

#pick nearest enemy
execute if score @s Team matches 1 at @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=2},sort=nearest] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score @s Team matches 2 at @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=1},sort=nearest] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute unless score @s Team matches 1..2 at @e[type=#projectile:players,tag=sab.activePlayer,distance=2..200,sort=nearest] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector

#fallback: complete task
execute if score #found_destination sab.var matches 0 run return run function sa_bots:bot/entity_task/complete_non_base_task_remove_destination
#=====


#think again in 2 seconds
scoreboard players set @s sab.botNavThinkTime 40

#set id and sector from storage
scoreboard players set @s sab.botLastDestinationUUID -1
data modify entity @s data.destinations set value []
data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint

#internalize destination id as score
execute store result score @s sab.botDestinationUUID run data get entity @s data.destinations[0].id
