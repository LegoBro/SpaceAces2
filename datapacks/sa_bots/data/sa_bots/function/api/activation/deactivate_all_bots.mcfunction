execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].active set value 0
data modify storage sa_bots:bot_data bot_template.active set value 0


#bot entities should update stats
execute as @e[type=mannequin,tag=sab.botEntity] run function sa_bots:bot/storage/update_all_stats

#bot entities are no longer valid
tag @e[type=mannequin,tag=sab.botEntity] remove sab.botEntity