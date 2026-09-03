#executed by system on every game tick whenever there are entries in sa_bots:bot_data bots[]


#determine what state Space Aces is in, and use that to decide we should attempt to spawn bots
# #bot_spawn_mode = 0 -- debug, just spawn bots at a random waypoint
# #bot_spawn_mode = 1 -- 2 teams, spawn bots at team spawnpoints
# #bot_spawn_mode = 2 -- ffa, spawn bots at ffa spawnpoints
scoreboard players set #bot_spawn_mode sab.var 0


#make sure any origin updates are handled...
execute if data storage sa_bots:bot_data this{updateOrigin:1} run function sa_bots:bot/storage/update_origin_storage


#iterate through all bots and make them do something
data modify storage sa_bots:generic bot_i set value 0
data modify storage sa_bots:generic bot_iplus1 set value 1
scoreboard players set #bot_i sab.var 1
function sa_bots:bot/bot_list_iterate with storage sa_bots:generic