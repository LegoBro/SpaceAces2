#count how many bots exist
execute store result score #count sab.var run data get storage sa_bots:bot_data bots

#do nothing if we've reached the max bot count
execute if score #count sab.var >= #MAX_BOT_COUNT sab.var run return run function sa_bots:bot/utility/reached_max_bot_count
#=====


#make sure settings exist
execute unless data storage sa_bots:bot_data bot_template.settings run function sa_bots:api/settings/load_default_settings

#add the bot
data modify storage sa_bots:bot_data bots append value {id:0}
#new id (aka the index) is bots[].Length() - 1
execute store result score #length sab.var run data get storage sa_bots:bot_data bots
scoreboard players remove #length sab.var 1
execute store result storage sa_bots:generic id int 1 run scoreboard players get #length sab.var
#go set up data on our newborn bot
function sa_bots:bot/storage/setup_new_bot with storage sa_bots:generic


#count down recursions (if relevant)
execute if score #create_recursions sab.var matches -2147483648..2147483647 run scoreboard players remove #create_recursions sab.var 1
execute if score #create_recursions sab.var matches ..0 run scoreboard players reset #create_recursions sab.var
#keep going if more recursions
execute if score #create_recursions sab.var matches 1.. run function sa_bots:api/create_bots/create_1_bot