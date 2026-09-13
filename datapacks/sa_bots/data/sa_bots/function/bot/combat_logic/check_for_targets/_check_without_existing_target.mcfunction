#executed by bot entity
#executed at 10Hz
#position is ~ ~1.25 ~ and ^ ^ ^22 from bot


#our goal in this function is to pick out a target (0 = nothing, 1.. = something)
#if we find one, store it in "@s sab.botTargetEntityID"


#clean up tag from previous go
tag @s remove sab.botShootingActiveOpponent

#look in a big area roughly corresponding to our field of view
tag @s add sab.self
tag @a[tag=sab.activePlayer,distance=..25] add sab.possibleTarget
execute if score @s sab.botSkill matches ..6 run tag @e[tag=hb,tag=entity,tag=!sab.self,tag=!standby_sticky_bomb,distance=..25] add sab.possibleTarget
execute if score @s sab.botSkill matches 7.. run tag @e[tag=hb,tag=entity,tag=!sab.self,distance=..25] add sab.possibleTarget
tag @s remove sab.self

#keep track of how many targets we find
scoreboard players set #target_count sab.var 0
scoreboard players set #target_count_sustainer sab.var 0

#keep track of the lowest % health teammate we find
scoreboard players set #lowest_percent_hp_teammate sab.var 100


#---------------------
#filter out targets based on various factors
scoreboard players operation #skill sab.var = @s sab.botSkill
scoreboard players operation #team sab.var = @s Team
execute store result score #shoot_teammates sab.var run execute if entity @s[tag=sab.botMayShootTeammates]
execute as @e[tag=sab.possibleTarget,distance=..25] run function sa_bots:bot/combat_logic/check_for_targets/filter_possible_targets
#---------------------


#shoot_priority:
# 0 = do nothing
# 1 = shoot nearest target
# 2 = shoot nearest enemy sustainer
# 3 = shoot nearest friendly player
# 4 = shoot most injured friendly player
execute store result score #shoot_priority sab.var run execute if score #target_count sab.var matches 1..

#skill 7.. 3/5 chance we shoot sustainer first
execute store result score #random sab.var run random value 1..5
execute if entity @s[scores={sab.botSkill=7..},tag=!sab.botPrioritizeNearbyTargets] \
    if score #target_count_sustainer sab.var matches 1.. if score #random sab.var matches 3.. run \
    scoreboard players set #shoot_priority sab.var 2

#cooperativeness 5..10: prioritize heal targets
execute if score @s sab.botCooperativeness matches 5..10 if score #lowest_percent_hp_teammate sab.var matches ..99 run scoreboard players set #shoot_priority sab.var 3
#skill 5.. of heal targets, prioritize the most injured person
execute if score #shoot_priority sab.var matches 3 if score #target_count sab.var matches 1.. \
    if score @s sab.botSkill matches 5.. run scoreboard players set #shoot_priority sab.var 4

#pick target depending on priority
scoreboard players set #get_id sab.var 0
execute if score #shoot_priority sab.var matches 1 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_nearest
execute if score #shoot_priority sab.var matches 2 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_sustainer
execute if score #shoot_priority sab.var matches 3 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_nearest_teammate
execute if score #shoot_priority sab.var matches 4 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_lowest_hp_teammate


#---------------------
#OUTPUT: store the entity target ID oh whatever we decided to shoot at
execute if score #get_id sab.var matches 1.. run function sa_bots:bot/combat_logic/check_for_targets/adopt_shoot_target
#---------------------


#clear targets
execute as @e[tag=sab.possibleTarget,distance=..25] run function sa_bots:bot/combat_logic/check_for_targets/clear_possible_target_tags

#set cooldown for LOS checks
execute store result score @s sab.botCheckLOSTimer run random value 5..11
scoreboard players operation @s sab.botCheckLOSTimer -= @s sab.botSkill