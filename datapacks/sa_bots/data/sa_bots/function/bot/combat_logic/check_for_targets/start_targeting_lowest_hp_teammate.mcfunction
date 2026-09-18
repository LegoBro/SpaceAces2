#pick the target that matches the lowest % health we found

#filter out targets that have higher % health
execute as @e[type=#projectile:has_hb,tag=sab.possibleTargetHealing,distance=..25] \
    if score @s sab.healthPercentage > #lowest_percent_hp_teammate sab.var run tag @s remove sab.possibleTargetHealing

#of the remaining targets, pick the nearest one
execute at @s as @e[type=#projectile:has_hb,limit=1,sort=nearest,tag=sab.possibleTargetHealing,distance=..50] store result score #get_id sab.var \
    run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id


#don't update tags unless we found a target
execute unless score #get_id sab.var matches 1.. run return fail
#====


#remember what our priority is
tag @s add sab.botShootingFriendlyPlayer

#clear old tags
tag @s remove sab.botShootingEnemySustainer