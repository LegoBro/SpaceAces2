scoreboard players set #found_destination sab.var 0

#we want to pick a patrol point that is
#1) not in a sector that is more dangerous than where we already are

#possible sources of healing:
# @e[type=marker,tag=wp.patrolPoint]
# @e[type=marker,tag=wp.patrolPoint.red]
# @e[type=marker,tag=wp.patrolPoint.blue]


#Earl will help us keep this optimized by being a point where we can teleport stuff and then do distance=..1
execute if loaded ~ ~ ~ run tp e-0-0-0-1 ~ ~ ~


#remember what Team we are and what sector we're in
scoreboard players operation #team sab.var = @s Team
scoreboard players operation #bot_in_sector sab.var = @s sab.botInSector

#figure out how dangerous this sector is
scoreboard players set #danger sab.var 0
scoreboard players set #count_less_dangerous sab.var 0
scoreboard players set #count_more_dangerous sab.var 0
execute if score @s Team matches 2 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_blue
execute if score @s Team matches 1 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_red


#log all possible source of healing along with how dangerous and far away they are
execute as @e[type=marker,tag=wp.patrolPoint,distance=..250] at @s if loaded ~ ~ ~ run function sa_bots:bot/entity_task/log_possible_destination/_go
execute if score @s Team matches 1 as @e[type=marker,tag=wp.patrolPoint.blue,distance=..250] at @s if loaded ~ ~ ~ run function sa_bots:bot/entity_task/log_possible_destination/_go
execute if score @s Team matches 2 as @e[type=marker,tag=wp.patrolPoint.red,distance=..250] at @s if loaded ~ ~ ~ run function sa_bots:bot/entity_task/log_possible_destination/_go

#low skill bot doesn't care about danger, they may run into more dangerous sectors
execute if entity @s[scores={sab.botSkill=..3}] run scoreboard players set #count_less_dangerous sab.var 0
#high aggression bot doesn't care about danger
execute if entity @s[scores={sab.botAggression=6..}] run scoreboard players set #count_less_dangerous sab.var 0
#very aggressive bot will likely seek out danger on purpose
execute unless entity @s[scores={sab.botAggression=8..}] run scoreboard players set #count_more_dangerous sab.var 0
#random chance we don't seek out danger on purpose
execute store result score #random sab.var run random value 1..5
execute if score #random sab.var matches ..2 run scoreboard players set #count_more_dangerous sab.var 0

#-----------------------------------
#pick one
execute unless score #count_more_dangerous sab.var matches 1.. if score #count_less_dangerous sab.var matches 1.. \
    as @e[type=marker,tag=sab.decisionMaker,tag=sab.notDangerous,distance=..1,limit=1,sort=random] run function sa_bots:bot/entity_task/log_possible_destination/choose_viable_option
execute unless score #count_more_dangerous sab.var matches 1.. unless score #count_less_dangerous sab.var matches 1.. \
    as @e[type=marker,tag=sab.decisionMaker,distance=..1,limit=1,sort=random] run function sa_bots:bot/entity_task/log_possible_destination/choose_viable_option
execute if score #count_more_dangerous sab.var matches 1.. \
    as @e[type=marker,tag=sab.decisionMaker,tag=sab.moreDangerous,distance=..1,limit=1,sort=random] run function sa_bots:bot/entity_task/log_possible_destination/choose_viable_option

#set id and sector from storage
data modify entity @s data.destinations set value []
execute if score #found_destination sab.var matches 1 run \
    data modify entity @s data.destinations prepend from storage sa_bots:generic get_waypoint
#-----------------------------------

#cleanup
kill @e[type=marker,tag=sab.decisionMaker,distance=..1]


#Earl can go home now
tp e-0-0-0-1 0 0 0

#fallback: regroup with teammate
execute if score #found_destination sab.var matches 0 run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:3}