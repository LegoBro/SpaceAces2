scoreboard players set #found_destination sab.var 0

#pick nearest teammate
execute if score @s Team matches 1 at @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=1},sort=nearest,distance=2..] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score @s Team matches 2 at @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=2},sort=nearest,distance=2..] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector

#fallback: pick a completely random waypoint, but stay on this task
execute if score #found_destination sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector


#think again in 2 seconds
scoreboard players set @s sab.botNavThinkTime 40

#remember previous destination if we're hot-swapping them
scoreboard players set @s sab.botLastDestinationUUID -1
execute if score #found_destination sab.var matches 1 if data entity @s data.destinations[0] store result score @s sab.botLastDestinationUUID run data get entity @s data.destinations[0].id

#set id and sector from storage
data modify entity @s data.destinations set value []
data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint

#internalize destination id as score
execute store result score @s sab.botDestinationUUID run data get entity @s data.destinations[0].id