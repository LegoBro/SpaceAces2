#executed by each of the possible targets our bot might take a detour to get to


#when we pick something, we set "#found_target sab.var" to 1 or 2
# 1 = only needs a single temporary move_target
# 2 = requires us to set "sab.botNavigationMode" to 3 so we stand around the object's location for a while


#don't go for us if we're owned by another team
execute if entity @s[tag=class.deployable] unless score @s Team = #team sab.var run tag @s add sab.possibleTargetSeeOnly

#if we're the first possible target, get data
execute if score #found_target sab.var matches 0 if entity @s[tag=!sab.possibleTargetSeeOnly] run function sa_bots:bot/movement/check_nearby_objects/pick_target

#tag clean-up
function sa_bots:bot/combat_logic/check_for_targets/clear_possible_target_tags