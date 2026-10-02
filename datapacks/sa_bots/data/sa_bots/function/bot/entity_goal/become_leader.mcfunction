#executed by a player or bot that a bot wants to follow into battle


#tag clean-up while we've got ourselves as execution context
tag @s remove sab.possibleLeader

#do nothing if not a preferred leader and we can afford to be picky
execute if score #count_valid sab.var matches 1.. unless entity @s[tag=sab.preferredLeader] run return run tag @s remove sab.preferredLeader
#=====

#more tag clean-up...
tag @s remove sab.preferredLeader

#do nothing if a leader was already chosen
execute if score #success sab.var matches 1.. run return fail
#=====

#unlikely to be chosen if we're not the bot who was most aggressive
execute if entity @s[tag=sab.botEntity] if score @s sab.botAggression < #best sab.var \
    if function sa_bots:bot/entity_goal/become_leader_randomly_filter_lower_aggression run return fail
#=====

#report back with whatever our id is
scoreboard players operation #success sab.var = @s id

#bots keep track of how many teammates are following them
execute if entity @s[tag=sab.botEntity] run scoreboard players add @s sab.botFollowers 1