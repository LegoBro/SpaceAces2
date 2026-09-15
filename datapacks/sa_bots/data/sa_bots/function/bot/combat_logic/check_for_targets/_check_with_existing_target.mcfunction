#executed by bot entity
#executed at 10Hz
#position is ~ ~1.25 ~ and ^ ^ ^22 from bot


#pick out a target (0 = nothing, 1.. = something)
#if our existing target is the first thing we find, we don't change targets


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

#if we were prioritizing a sustainer, keep doing that
execute if entity @s[tag=sab.botShootingEnemySustainer] \
    if score #target_count_sustainer sab.var matches 1.. if score #random sab.var matches 3.. run scoreboard players set #shoot_priority sab.var 2

#if we were prioritizing a heal target, keep doing that
execute if entity @s[tag=sab.botShootingFriendlyPlayer] if score #lowest_percent_hp_teammate sab.var matches ..99 run scoreboard players set #shoot_priority sab.var 3
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
execute if score #get_id sab.var matches 1.. unless score #get_id sab.var = @s sab.botTargetEntityID \
    run function sa_bots:bot/combat_logic/check_for_targets/adopt_shoot_target
#---------------------


#clear targets
execute as @e[type=#projectile:has_hb,tag=sab.possibleTarget,distance=..25] run function sa_bots:bot/combat_logic/check_for_targets/clear_possible_target_tags

#set cooldown for LOS checks
execute store result score @s sab.botCheckLOSTimer run random value 5..11
scoreboard players operation @s sab.botCheckLOSTimer -= @s sab.botSkill