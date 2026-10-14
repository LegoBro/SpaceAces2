#executed by a bot entity
#this sets the respawn time on a bot


#set respawn time for this bot
execute store result storage sa_bots:generic i int 1 run scoreboard players get @s sab.botID
$data modify storage sa_bots:generic duration set value $(duration)
function sa_bots:bot/utility/bot_set_respawn_time_macro with storage sa_bots:generic