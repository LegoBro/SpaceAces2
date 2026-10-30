execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[{team:2}].active set value 1
data modify storage sa_bots:bot_data bot_template.active set value 1

#bots will use "spawn" logic on first spawn, then "respawn" for each subsequent
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[{team:2}].first_spawn set value 1