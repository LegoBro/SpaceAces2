scoreboard players set #found_destination sab.var 0

#specified enemy must exist and NOT be on our team
scoreboard players operation #team sab.var = @s Team
scoreboard players add @s sab.botSeekingEnemy 0
scoreboard players operation #get_id sab.var = @s sab.botSeekingEnemy
execute as @e[type=#projectile:players,tag=sab.activePlayer] if score @s id = #get_id sab.var unless score @s Team = #team sab.var \
    at @s as @e[type=marker,tag=sab.botWaypointGeneric,tag=!wp.dontReRouteHere,limit=1,sort=nearest,distance=..200] run function sa_bots:bot/utility/waypoint_get_id_and_sector


#think again in 2 seconds
scoreboard players set @s sab.botNavThinkTime 40

#remember previous destination if we're hot-swapping them
scoreboard players set @s sab.botLastDestinationUUID -1
execute if score #found_destination sab.var matches 1 if data entity @s data.destinations[0] store result score @s sab.botLastDestinationUUID run data get entity @s data.destinations[0].id

#set id and sector from storage
execute if score #found_destination sab.var matches 1 run data modify entity @s data.destinations set value []
execute if score #found_destination sab.var matches 1 run \
    data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint

#internalize destination id as score
scoreboard players set @s sab.botDestinationUUID -2
execute if score #found_destination sab.var matches 1 store result score @s sab.botDestinationUUID run data get entity @s data.destinations[0]


#fallback: switch task, random within sector
execute if score #found_destination sab.var matches 0 run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:14}