#executed by system
#executed for each entry in sa_bots:bot_data bots[]

#$(bot_i) = index of the bot
#$(bot_iplus1) = index of the next bot in the array (may or may not exist)


#check this bot
$data modify storage sa_bots:generic username set from storage sa_bots:bot_data bots[$(bot_i)].profile.username
data modify storage sa_bots:generic id set from storage sa_bots:generic bot_i
function sa_bots:bot/setup/profile/check_bot_username with storage sa_bots:generic


#recursion to iterate through the rest of the bots
data modify storage sa_bots:generic bot_i set from storage sa_bots:generic bot_iplus1
scoreboard players add #bot_i sab.var 1
execute store result storage sa_bots:generic bot_iplus1 int 1 run scoreboard players get #bot_i sab.var
$execute if data storage sa_bots:bot_data bots[$(bot_iplus1)] run function sa_bots:bot/setup/profile/check_usernames_iterate with storage sa_bots:generic