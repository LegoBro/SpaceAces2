#wrapped function for function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target
#only returns 1 if we can see the target directly without looking through a transparent block

execute store result score #test sab.var run function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target
tag @s[tag=sab.possibleTargetSeeOnly] remove sab.possibleTargetSeeOnly
execute if score #test sab.var matches 1 run return 1
return fail