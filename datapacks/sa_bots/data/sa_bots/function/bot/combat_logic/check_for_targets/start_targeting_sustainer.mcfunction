#get that med pick (shoot at the nearest enemy sustainer)
execute at @s as @e[limit=1,sort=nearest,tag=sab.possibleTargetSustainer,distance=..50] store result score #get_id sab.var \
    run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id