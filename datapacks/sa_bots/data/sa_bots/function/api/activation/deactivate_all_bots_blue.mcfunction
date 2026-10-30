execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[{team:1}].active set value 0
data modify storage sa_bots:bot_data bot_template.active set value 0


#bot entities are no longer valid
tag @e[type=mannequin,tag=sab.botEntity,scores={Team=1}] remove sab.botEntity