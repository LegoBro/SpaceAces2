scoreboard players set #found_destination sab.var 0

#we want to pick a point that is
#1) near the enemy team, but not in a sector with enemies inside of it

#possible targets:
# @e[type=marker,tag=wp.sniperRelevant]
# @e[type=marker,tag=wp.sniperRelevant.red]
# @e[type=marker,tag=wp.sniperRelevant.blue]


#Earl will help us keep this optimized by being a point where we can teleport stuff and then do distance=..1
execute if loaded ~ ~ ~ run tp e-0-0-0-1 ~ ~ ~


#have the sniper hang out around the destination once they reach it
scoreboard players set #destination_action sab.var 3

#remember what Team we are and what sector we're in
scoreboard players operation #team sab.var = @s Team
scoreboard players operation #bot_in_sector sab.var = @s sab.botInSector

#figure out how dangerous this sector is
scoreboard players set #danger sab.var 0
scoreboard players set #count_less_dangerous sab.var 0
execute if score @s Team matches 2 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_blue
execute if score @s Team matches 1 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_red

#higher skill bots won't pick a spot right next to a friendly sniper
execute if score @s sab.botSkill matches 4.. run scoreboard players set #filter_possible_targets sab.var 2

#log all possible targets along with how dangerous and far away they are
execute as @e[type=marker,tag=wp.sniperRelevant,tag=sab.botWaypointGeneric,distance=..250] at @s if loaded ~ ~ ~ run function sa_bots:bot/entity_task/log_possible_destination/_go
execute if score @s Team matches 1 as @e[type=marker,tag=wp.sniperRelevant.blue,tag=sab.botWaypointGeneric,distance=..250] at @s if loaded ~ ~ ~ run function sa_bots:bot/entity_task/log_possible_destination/_go
execute if score @s Team matches 2 as @e[type=marker,tag=wp.sniperRelevant.red,tag=sab.botWaypointGeneric,distance=..250] at @s if loaded ~ ~ ~ run function sa_bots:bot/entity_task/log_possible_destination/_go
scoreboard players set #filter_possible_targets sab.var 0

#-----------------------------------
#pick something close to the front line (but not crossing it)
scoreboard players set #best sab.var -2147483648
scoreboard players operation #best sab.var > @e[type=marker,tag=sab.decisionMaker,distance=..1,scores={sab.markDangerEnemyOnly=..9}] sab.markDangerEnemyOnly
execute as @e[type=marker,tag=sab.decisionMaker,distance=..1,sort=random,scores={sab.markDanger=..0}] \
    if score @s sab.markDangerEnemyOnly = #best sab.var run function sa_bots:bot/entity_task/log_possible_destination/choose_viable_option_first_only
execute if score #found_destination sab.var matches 0 as @e[type=marker,tag=sab.decisionMaker,distance=..1,sort=random] \
    if score @s sab.markDangerEnemyOnly = #best sab.var run function sa_bots:bot/entity_task/log_possible_destination/choose_viable_option_first_only

#set id and sector from storage
scoreboard players set @s sab.botLastDestinationUUID -1
execute if score #found_destination sab.var matches 1 run data modify entity @s data.destinations set value []
execute if score #found_destination sab.var matches 1 run \
    data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint

#internalize destination id as score
scoreboard players set @s sab.botDestinationUUID -2
execute if score #found_destination sab.var matches 1 store result score @s sab.botDestinationUUID run data get entity @s data.destinations[0]
#-----------------------------------

#cleanup
kill @e[type=marker,tag=sab.decisionMaker,distance=..1]


#Earl can go home now
tp e-0-0-0-1 0 50 0

#fallback: end task, go one layer down on the task list
scoreboard players set #destination_action sab.var 0
execute if score #found_destination sab.var matches 0 run function sa_bots:bot/entity_task/complete_non_base_task
