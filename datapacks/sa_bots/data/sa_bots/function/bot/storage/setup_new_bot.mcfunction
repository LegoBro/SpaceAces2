#executed by anything

#$(id) = the id of this bot. must be the same as our index in the bots[] list

#set id
$data modify storage sa_bots:bot_data bots[$(id)].id set value $(id)

#bot instance
function sa_bots:bot/utility/generate_new_bot_instance
$execute store result storage sa_bots:bot_data bots[$(id)].instance int 1 run scoreboard players get #get_bot_instance sab.var

#adopt settings from bot_template
$data modify storage sa_bots:bot_data bots[$(id)].settings set from storage sa_bots:bot_data bot_template.settings

#adopt activation state
$data modify storage sa_bots:bot_data bots[$(id)].active set from storage sa_bots:bot_data bot_template.active

#starting game variables
$data modify storage sa_bots:bot_data bots[$(id)].game set from storage sa_bots:bot_data bot_template.game


#adopt a random profile
function sa_bots:bot/setup/profile/assign_random_profile
$data modify storage sa_bots:bot_data bots[$(id)].profile set from storage sa_bots:bot_data profiles.get