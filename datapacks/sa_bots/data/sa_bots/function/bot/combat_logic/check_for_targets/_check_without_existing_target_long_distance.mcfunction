#executed by bot entity
#executed at 10Hz


#our goal in this function is to pick out a target (0 = nothing, 1.. = something)
#if we find one, store it in "@s sab.botTargetEntityID"


#---------------------
#tag anything in our FOV that we might want to shoot
execute positioned ~ ~1.25 ~ positioned ^ ^ ^65 run function sa_bots:bot/combat_logic/check_for_targets/aggregate_possible_targets_long_distance
#---------------------


#pick one target to check LOS to at complete random
scoreboard players set #get_id sab.var 0
execute if score #target_count sab.var matches 1.. run function sa_bots:bot/combat_logic/check_for_targets/start_targeting_random


#---------------------
#OUTPUT: store the entity target ID oh whatever we decided to shoot at
execute if score #get_id sab.var matches 1.. run function sa_bots:bot/combat_logic/check_for_targets/adopt_shoot_target
#---------------------


#clear targets
execute as @e[type=#projectile:has_hb,tag=sab.possibleTarget] run function sa_bots:bot/combat_logic/check_for_targets/clear_possible_target_tags

#set cooldown for LOS checks
execute store result score @s sab.botCheckLOSTimerLongDistance run random value 5..15
scoreboard players operation @s sab.botCheckLOSTimerLongDistance -= @s sab.botSkill