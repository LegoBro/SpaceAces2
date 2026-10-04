#executed by a player that a bot is considering following


#if we're a bot: we must have the "PUSH" goal and be doing a base task
execute if entity @s[tag=sab.botEntity] unless entity @s[tag=!sab.botDoingNonBaseTask,scores={sab.botGoal=1}] run return fail
#=====

#if we're a bot: we cannot be following someone else already
execute if entity @s[tag=sab.botEntity,scores={sab.botFollowingPlayer=1..}] run return fail
#=====


#if we made it here, we're a possible leader
tag @s add sab.possibleLeader


#prefer not to follow classes that aren't suited to lead a charge into battle
execute unless function sa_bots:bot/entity_goal/check_if_class_is_leadership_material run return fail
#=====

#if we made it here, we're a preferred possible leader


#remember what the most aggressive bot we found was
execute if entity @s[tag=sab.botEntity] run scoreboard players operation #best sab.var > @s sab.botAggression

#tag self as a preferred leader
scoreboard players add #count_valid sab.var 1
tag @s add sab.preferredLeader