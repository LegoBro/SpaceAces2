#executed by bot entity
#executed at 10Hz
#position is ~ ~1.25 ~ and ^ ^ ^22 from bot


#our goal in this function is to pick out a target (0 = nothing, 1.. = something)
#if we find one, store it in "@s sab.botTargetEntityID"


#---------------------
#tag anything in our FOV that we might want to shoot
function sa_bots:bot/combat_logic/check_for_targets/aggregate_possible_targets
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
execute if score #shoot_priority sab.var matches 0 if score #target_count_see_only sab.var matches 1.. \
    unless score @s sab.botGlanceTime matches 1..50 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_nearest_look_only
    execute if score #shoot_priority sab.var matches 1 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_nearest
execute if score #shoot_priority sab.var matches 2 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_sustainer
execute if score #shoot_priority sab.var matches 3 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_nearest_teammate
execute if score #shoot_priority sab.var matches 4 run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_lowest_hp_teammate


#---------------------
#OUTPUT: store the entity target ID oh whatever we decided to shoot at
execute if score #get_id sab.var matches 1.. run function sa_bots:bot/combat_logic/check_for_targets/adopt_shoot_target
#---------------------


#clear targets
execute as @e[type=#projectile:has_hb,tag=sab.possibleTarget,distance=..25] run function sa_bots:bot/combat_logic/check_for_targets/clear_possible_target_tags

#set cooldown for LOS checks
execute store result score @s sab.botCheckLOSTimer run random value 5..15
scoreboard players operation @s sab.botCheckLOSTimer -= @s sab.botSkill