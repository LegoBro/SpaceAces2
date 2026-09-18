#get that med pick (shoot at the nearest enemy sustainer)
execute at @s as @e[type=#projectile:has_hb,limit=1,sort=nearest,tag=sab.possibleTargetSustainer,distance=..50] store result score #get_id sab.var \
    run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id


#don't update tags unless we found a target
execute unless score #get_id sab.var matches 1.. run return fail
#====


#remember that we're targeting an enemy sustainer
tag @s add sab.botShootingEnemySustainer

#clear old tags
tag @s remove sab.botShootingFriendlyPlayer
