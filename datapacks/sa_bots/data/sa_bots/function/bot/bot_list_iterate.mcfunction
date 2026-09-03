#executed by system

#$(bot_i) = what index we're at in the list of bots
#$(bot_iplus1) = next index



#load bot data into a place where we can read it easier without doing so many macros
$data modify storage sa_bots:bot_data this set from storage sa_bots:bot_data bots[$(bot_i)]

#do something depending on if the bot is active or not
execute store result score #read_top_state sab.var run data get storage sa_bots:bot_data this.active
execute if score #read_top_state sab.var matches 0 run function sa_bots:bot/top_state/deactivated/_bot_deactivated_tick
execute if score #read_top_state sab.var matches 1 run function sa_bots:bot/top_state/active/_bot_active_tick
execute if score #read_top_state sab.var matches 2 run function sa_bots:bot/top_state/model_only/_model_only_tick

#adopt any data changes that may have happened
$execute if data storage sa_bots:bot_data this{updateOrigin:1} run data modify storage sa_bots:bot_data bots[$(bot_i)] set from storage sa_bots:bot_data this
data modify storage sa_bots:bot_data this.updateOrigin set value 0


#recursion to iterate through the rest of the bots
data modify storage sa_bots:generic bot_i set from storage sa_bots:generic bot_iplus1
scoreboard players add #bot_i sab.var 1
execute store result storage sa_bots:generic bot_iplus1 int 1 run scoreboard players get #bot_i sab.var
$execute if data storage sa_bots:bot_data bots[$(bot_iplus1)] run function sa_bots:bot/bot_list_iterate with storage sa_bots:generic