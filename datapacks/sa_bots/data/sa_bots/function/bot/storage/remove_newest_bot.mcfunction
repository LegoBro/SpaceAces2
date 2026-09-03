#executed by anything

#$(id) = the id/index of this bot.


#fetch profile
$data modify storage sa_bots:bot_data profiles.get set from storage sa_bots:bot_data bots[$(id)].profile

#now remove the bot
$data remove storage sa_bots:bot_data bots[$(id)]


#this bot's profile will be made available to use again, but only if it's a valid profile
execute store result score #read2 sab.var run data get storage sa_bots:bot_data profiles.get.id
execute if score #read2 sab.var matches 0.. run data modify storage sa_bots:bot_data profiles.available append from storage sa_bots:bot_data profiles.get

#remove profile from the in_use list
data modify storage sa_bots:generic remove_id set from storage sa_bots:bot_data profiles.get.id
function sa_bots:bot/setup/profile/remove_active_profile_with_id with storage sa_bots:generic