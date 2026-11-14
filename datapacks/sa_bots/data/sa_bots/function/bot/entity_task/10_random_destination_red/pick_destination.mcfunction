scoreboard players set #found_destination sab.var 0

#pick a random sector that blue team has more infuence over
scoreboard players set #sector sab.var 0
execute if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=9..}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=9..},limit=1,sort=random] sab.botInSector
execute if score #sector sab.var matches 0 if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=8..}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=8..},limit=1,sort=random] sab.botInSector
execute if score #sector sab.var matches 0 if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=7..}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=7..},limit=1,sort=random] sab.botInSector
execute if score #sector sab.var matches 0 if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=6..}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=6..},limit=1,sort=random] sab.botInSector
execute if score #sector sab.var matches 0 if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=5..}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=5..},limit=1,sort=random] sab.botInSector
execute if score #sector sab.var matches 0 if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=3..}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=3..},limit=1,sort=random] sab.botInSector
execute if score #sector sab.var matches 0 if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=1..}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1,sab.teamPresenceBlue=1..},limit=1,sort=random] sab.botInSector
execute if score #sector sab.var matches 0 if entity @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1}] run scoreboard players operation #sector sab.var = @e[type=marker,tag=sab.sectorInformationValid,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceNet=..-1},limit=1,sort=random] sab.botInSector
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