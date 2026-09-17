#look at the nearest thing
execute at @s as @e[type=#projectile:has_hb,limit=1,sort=nearest,tag=sab.possibleTarget,distance=1..50] store result score #get_id sab.var \
    run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id
