#executed by anything

#$(bot_i) = what index we're at in the list of bots


#do nothing if already loaded
execute if score #bot_is_using_active_storage sab.var matches 1.. run return fail
#=====


#load bot data into a place where we can read it easier without doing so many macros
$data modify storage sa_bots:bot_data this set from storage sa_bots:bot_data bots[$(bot_i)]

#set flag indicating that we've already copied storage over
scoreboard players set #bot_is_using_active_storage sab.var 1