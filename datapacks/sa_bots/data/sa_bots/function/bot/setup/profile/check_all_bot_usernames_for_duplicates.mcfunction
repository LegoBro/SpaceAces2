#executed by system each time a new human player joins the server


#we need to make sure no human players have the same username as a bot
#if a match is detected, we need to change the bot's username


#iterate through all existing bots
data modify storage sa_bots:generic bot_i set value 0
data modify storage sa_bots:generic bot_iplus1 set value 1
scoreboard players set #bot_i sab.var 1
function sa_bots:bot/setup/profile/check_usernames_iterate with storage sa_bots:generic