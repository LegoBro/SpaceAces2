#executed by a bot entity

#$(bot_i) = the index of this bot in sa_bots:bot_data bots[]


#set CustomName from storage
$data modify entity @s CustomName set from storage sa_bots:bot_data bots[$(bot_i)].profile.username

#set scoreboard display style based on the gamemode
function sa_bots:bot/setup/set_scoreboard_display_names