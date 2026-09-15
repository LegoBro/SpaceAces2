scoreboard players set #found_destination sab.var 0

#pick nearest enemy
execute if score @s Team matches 1 at @e[tag=sab.activePlayer,scores={Team=2},sort=nearest] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score @s Team matches 2 at @e[tag=sab.activePlayer,scores={Team=1},sort=nearest] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute unless score @s Team matches 1..2 at @e[tag=sab.activePlayer,distance=2..,sort=nearest] as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest] run function sa_bots:bot/utility/waypoint_get_id_and_sector

#fallback: pick a completely random waypoint
execute if score #found_destination sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random] run function sa_bots:bot/utility/waypoint_get_id_and_sector


#think again in 2 seconds
scoreboard players set @s sab.botNavThinkTime 40

#set id and sector from storage
data modify entity @s data.destinations set value []
data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint