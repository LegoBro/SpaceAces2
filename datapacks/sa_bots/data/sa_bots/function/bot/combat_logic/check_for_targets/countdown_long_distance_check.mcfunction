#count down time
scoreboard players remove @s sab.botCheckLOSTimerLongDistance 2

#check for target when timer hits 0
execute unless score @s sab.botTargetEntityID matches 1.. \
    if score @s sab.botCheckLOSTimerLongDistance matches ..0 run function sa_bots:bot/combat_logic/check_for_targets/_check_without_existing_target_long_distance
