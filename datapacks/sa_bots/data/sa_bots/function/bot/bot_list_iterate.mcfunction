#executed by system

#$(bot_i) = what index we're at in the list of bots
#$(bot_iplus1) = next index



#keep track of whether we've copied this bot's data into active storage on this tick
#(this is expensive, so we're not going to do it unless absolutely neccesary)
scoreboard players set #bot_is_using_active_storage sab.var 0

#keep track of small data updates
scoreboard players set #bot_sent_small_data_update sab.var 0

#read some basic variables from storage
$scoreboard players set #bot_this_id sab.var $(bot_i)
$execute store result score #bot_this_instance sab.var run data get storage sa_bots:bot_data bots[$(bot_i)].instance

#do something depending on if the bot is active or not
$execute store result score #read_top_state sab.var run data get storage sa_bots:bot_data bots[$(bot_i)].active
execute if score #read_top_state sab.var matches 0 run function sa_bots:bot/top_state/deactivated/_bot_deactivated_tick
execute if score #read_top_state sab.var matches 1 run function sa_bots:bot/top_state/active/_bot_active_tick
execute if score #read_top_state sab.var matches 2 run function sa_bots:bot/top_state/model_only/_model_only_tick

#adopt any data large changes that may have happened
$execute if score #bot_is_using_active_storage sab.var matches 1 if data storage sa_bots:bot_data this{updateOrigin:1} run data modify storage sa_bots:bot_data bots[$(bot_i)] set from storage sa_bots:bot_data this
data modify storage sa_bots:bot_data this.updateOrigin set value 0

#adopt small data changes
execute if score #bot_sent_small_data_update sab.var matches 1.. run function sa_bots:bot/storage/apply_small_update/_accept_small_data_updates


#recursion to iterate through the rest of the bots
data modify storage sa_bots:generic bot_i set from storage sa_bots:generic bot_iplus1
scoreboard players add #bot_i sab.var 1
execute store result storage sa_bots:generic bot_iplus1 int 1 run scoreboard players get #bot_i sab.var
$execute if data storage sa_bots:bot_data bots[$(bot_iplus1)] run function sa_bots:bot/bot_list_iterate with storage sa_bots:generic