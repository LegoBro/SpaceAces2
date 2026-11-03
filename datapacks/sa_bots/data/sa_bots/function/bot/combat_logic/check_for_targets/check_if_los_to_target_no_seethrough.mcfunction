#wrapper function for function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target
#only returns 1 if we can see the target directly without looking through a transparent block

#i'm doing 2 raycasts with minor offsets here to reduce the likelihood of us seeing through a corner

execute positioned ^.5 ^ ^ facing entity @s eyes store result score #test sab.var run function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target
tag @s[tag=sab.possibleTargetSeeOnly] remove sab.possibleTargetSeeOnly
tag @s[tag=sab.possibleTarget] remove sab.possibleTarget

execute positioned ^-.5 ^ ^ facing entity @s eyes store result score #test2 sab.var run function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target
tag @s[tag=sab.possibleTargetSeeOnly] remove sab.possibleTargetSeeOnly
tag @s[tag=sab.possibleTarget] remove sab.possibleTarget

#valid if both checks passed AND we're above ground
execute if score #test sab.var matches 1 if score #test2 sab.var matches 1 \
    at @s if function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run \
    return run tag @s add sab.possibleTarget
#=====

return fail