#exit out when we find ourselves
execute positioned ~ ~-1 ~ if entity @s[distance=..1.5] run \
    return run tag @s add sab.possibleTargetSeeOnly
#=====

#keep going
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches 1.. if block ~ ~ ~ #sa_bots:bot_sees_through positioned ^ ^ ^1 \
    run return run function sa_bots:bot/combat_logic/check_for_targets/check_los_to_target_see_only_recursive