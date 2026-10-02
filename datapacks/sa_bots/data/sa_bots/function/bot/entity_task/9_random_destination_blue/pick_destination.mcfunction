scoreboard players set #found_destination sab.var 0

#pick a random sector that blue team has more infuence over
scoreboard players set #sector sab.var 0
execute if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=1..}] run \
    scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=1..},limit=1,sort=random] sab.botInSector
#pick a random point within that sector
execute if score #sector sab.var matches 1 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.1] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 2 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.2] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 3 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.3] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 4 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.4] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 5 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.5] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 6 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.6] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 7 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.7] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 8 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.8] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 9 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.9] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 10 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.10] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 11 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.11] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 12 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.12] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 13 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.13] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 14 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.14] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 15 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.15] run function sa_bots:bot/utility/waypoint_get_id_and_sector
execute if score #sector sab.var matches 16 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200,tag=sab.sector.16] run function sa_bots:bot/utility/waypoint_get_id_and_sector

#fallback: pick a completely random waypoint, but stay on this task
execute if score #found_destination sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector


#set id and sector from storage
scoreboard players set @s sab.botLastDestinationUUID -1
data modify entity @s data.destinations set value []
data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint

#internalize destination id as score
execute store result score @s sab.botDestinationUUID run data get entity @s data.destinations[0]