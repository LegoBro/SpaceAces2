scoreboard players set #found_destination sab.var 0

#we want to pick a health source that is
#1) closer than the others (based on nav distance, not raw distance)
#2) not in a sector that is more dangerous than where we already are

#possible sources of healing:
# @e[type=marker,tag=weak_health_pack]
# @e[type=marker,tag=strong_health_pack]
# friendly chem dispenser
# friendly overheal machine
# teammate playing a class that can direcly heal us (healer, shocksmith)


#Earl will help us keep this optimized by being a point where we can teleport stuff and then do distance=..1
execute if loaded ~ ~ ~ run tp e-0-0-0-1 ~ ~ ~


#remember what Team we are and what sector we're in
scoreboard players operation #team sab.var = @s Team
scoreboard players operation #bot_in_sector sab.var = @s sab.botInSector

#figure out how dangerous this sector is
scoreboard players set #danger sab.var 0
scoreboard players set #count_less_dangerous sab.var 0
execute if score @s Team matches 2 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_blue
execute if score @s Team matches 1 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_red


#log all possible source of healing along with how dangerous and far away they are
execute as @e[type=marker,tag=weak_health_pack,distance=..250] at @s if loaded ~ ~ ~ as @e[type=marker,tag=sab.botWaypointGeneric,limit=1,sort=nearest,distance=..15] run function sa_bots:bot/entity_task/log_possible_destination/_go
execute as @e[type=marker,tag=strong_health_pack,distance=..250] at @s if loaded ~ ~ ~ as @e[type=marker,tag=sab.botWaypointGeneric,limit=1,sort=nearest,distance=..15] run function sa_bots:bot/entity_task/log_possible_destination/_go
execute as @e[type=item_display,tag=chem_dispenser,distance=..250] if score @s Team = #team sab.var at @s if loaded ~ ~ ~ as @e[type=marker,tag=sab.botWaypointGeneric,limit=1,sort=nearest,distance=..15] run function sa_bots:bot/entity_task/log_possible_destination/_go
execute as @e[type=item_display,tag=class.healer.over_heal_machine,distance=..250] if score @s Team = #team sab.var at @s if loaded ~ ~ ~ as @e[type=marker,tag=sab.botWaypointGeneric,limit=1,sort=nearest,distance=..15] run function sa_bots:bot/entity_task/log_possible_destination/_go
execute as @e[type=#projectile:players,tag=sab.activePlayer,distance=5..250] if score @s Team = #team sab.var \
    if function sa_bots:bot/entity_task/5_find_healing/check_if_direct_healer at @s if loaded ~ ~ ~ as @e[type=marker,tag=sab.botWaypointGeneric,limit=1,sort=nearest,distance=..15] run function sa_bots:bot/entity_task/log_possible_destination/_go

#low skill bot doesn't care about danger, they may run into more dangerous sectors for health
execute if entity @s[scores={sab.botSkill=..6,sab.botAggression=9..}] run scoreboard players set #count_less_dangerous sab.var 0
execute if entity @s[scores={sab.botSkill=..4,sab.botAggression=6..}] run scoreboard players set #count_less_dangerous sab.var 0
execute if entity @s[scores={sab.botSkill=..2,sab.botAggression=3..}] run scoreboard players set #count_less_dangerous sab.var 0

#pick the closest one
#(if there's at least 1 healing source that's NOT in a more dangerous place, only sort through the good options)
scoreboard players set #best sab.var 2147483647
execute if score #count_less_dangerous sab.var matches 1.. run scoreboard players operation #best sab.var < @e[type=marker,tag=sab.decisionMaker,tag=sab.notDangerous,distance=..1] sab.markDistance
execute if score #count_less_dangerous sab.var matches 1.. as @e[type=marker,tag=sab.decisionMaker,tag=sab.notDangerous,distance=..1] if score @s sab.markDistance <= #best sab.var run tag @s add sab.viableOption
execute unless score #count_less_dangerous sab.var matches 1.. run scoreboard players operation #best sab.var < @e[type=marker,tag=sab.decisionMaker,distance=..1] sab.markDistance
execute unless score #count_less_dangerous sab.var matches 1.. as @e[type=marker,tag=sab.decisionMaker,distance=..1] if score @s sab.markDistance <= #best sab.var run tag @s add sab.viableOption
#-----------------------------------
#pick one at random
execute as @e[type=marker,tag=sab.viableOption,tag=sab.decisionMaker,distance=..1,limit=1,sort=random] run function sa_bots:bot/entity_task/log_possible_destination/choose_viable_option

#set id and sector from storage
scoreboard players set @s sab.botLastDestinationUUID -1
execute if score #found_destination sab.var matches 1 run data modify entity @s data.destinations set value []
execute if score #found_destination sab.var matches 1 run \
    data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint
#-----------------------------------

#cleanup
kill @e[type=marker,tag=sab.decisionMaker,distance=..1]


#Earl can go home now
tp e-0-0-0-1 0 50 0

#fallback: end task, go one layer down on the task list
execute if score #found_destination sab.var matches 0 run function sa_bots:bot/entity_task/complete_non_base_task

#yikes, this ended up being more complicated than i thought...
#on the the bright side, it should be much easier to create similar tasks since i generalized a bunch of it