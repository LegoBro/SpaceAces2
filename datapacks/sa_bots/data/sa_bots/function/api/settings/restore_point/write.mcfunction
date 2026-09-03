#set flag indicating that data was written
scoreboard players set #restore_point_written sab.var 1

#copy data
data modify storage sa_bots:bot_data restore_point set from storage sa_bots:bot_data bot_template
data modify storage sa_bots:bot_data restore_point_bots set from storage sa_bots:bot_data bots