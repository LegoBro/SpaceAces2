#executed by system on every game tick whenever there are entries in sa_bots:bot_data bots[]


#make sure any origin updates are handled...
execute if data storage sa_bots:bot_data this{updateOrigin:1} run function sa_bots:bot/storage/update_origin_storage


#every 2 seconds, we will gather information for all players (player count, classes, etc)
execute if score #2sec sab.var matches 33 run function sa_bots:bot/setup/class/_run_all_counts
execute if score #2sec sab.var matches 33 run function sa_bots:bot/utility/count_players_and_bots_on_red_and_blue

#iterate through all bots and make them do something
data modify storage sa_bots:generic bot_i set value 0
data modify storage sa_bots:generic bot_iplus1 set value 1
scoreboard players set #bot_i sab.var 1
function sa_bots:bot/bot_list_iterate with storage sa_bots:generic