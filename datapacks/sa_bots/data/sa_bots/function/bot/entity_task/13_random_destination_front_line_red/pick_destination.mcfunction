scoreboard players set #found_destination sab.var 0

#pick a random sector that has red players nearby but not within
scoreboard players set #max sab.var 0
scoreboard players set #min sab.var 100
scoreboard players set #sector sab.var 0
execute as @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceBlue=9}] run function sa_bots:bot/entity_task/13_random_destination_front_line_red/log_viable_sector
execute if score #sector sab.var matches 0 as @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceBlue=8}] run function sa_bots:bot/entity_task/13_random_destination_front_line_red/log_viable_sector
execute if score #sector sab.var matches 0 as @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceBlue=7}] run function sa_bots:bot/entity_task/13_random_destination_front_line_red/log_viable_sector
execute if score #sector sab.var matches 0 as @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceBlue=5..6}] run function sa_bots:bot/entity_task/13_random_destination_front_line_red/log_viable_sector
execute if score #sector sab.var matches 0 as @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceBlue=3..4}] run function sa_bots:bot/entity_task/13_random_destination_front_line_red/log_viable_sector
execute if score #sector sab.var matches 0 as @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceBlue=1..2}] run function sa_bots:bot/entity_task/13_random_destination_front_line_red/log_viable_sector
#pick whichever sector was closest to red, and among those options, pick the one with the highest friendly presence
execute if entity @s[tag=!sab.botWantsToFlankEnemy] as @e[type=marker,x=0,y=50,z=0,distance=..1,sort=random,tag=sab.sectorOptionViable] if score @s sab.teamPresenceRed >= #max sab.var run scoreboard players operation #sector sab.var = @s sab.botInSector
execute if entity @s[tag=sab.botWantsToFlankEnemy] as @e[type=marker,x=0,y=50,z=0,distance=..1,sort=random,tag=sab.sectorOptionViable] if score @s sab.teamPresenceRed <= #min sab.var run scoreboard players operation #sector sab.var = @s sab.botInSector
tag @e[type=marker,x=0,y=50,z=0,distance=..1,sort=random,tag=sab.sectorOptionViable] remove sab.sectorOptionViable
#pick a random point within that sector
function sa_bots:bot/entity_task/get_random_waypoint_within_sector

#fallback: pick a completely random waypoint, but stay on this task
execute if score #found_destination sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=random,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector


#set id and sector from storage
scoreboard players set @s sab.botLastDestinationUUID -1
data modify entity @s data.destinations set value []
data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint

#internalize destination id as score
execute store result score @s sab.botDestinationUUID run data get entity @s data.destinations[0].id