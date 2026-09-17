#executed by system

#sa_bots:bot_data this = the current bot we're referring to


#--------------------
#run logic on our bot entity
scoreboard players set #bot_exists sab.var 0
execute store result storage sa_bots:generic id int 1 run scoreboard players get #bot_this_id sab.var
execute store result storage sa_bots:generic instance int 1 run scoreboard players get #bot_this_instance sab.var
function sa_bots:bot/top_state/model_only/find_bot_entity with storage sa_bots:generic
#--------------------

#bot missing? try to cope
#...