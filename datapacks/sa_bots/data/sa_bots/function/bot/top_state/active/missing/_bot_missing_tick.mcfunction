#executed by system

#sa_bots:bot_data this = the current bot we're referring to


#copy data into active storage
function sa_bots:bot/storage/copy_data_to_active_storage with storage sa_bots:generic

#count down respawn time
execute store result score #read sab.var run data get storage sa_bots:bot_data this.respawn_time
scoreboard players remove #read sab.var 1
execute if score #read sab.var matches ..-1 run scoreboard players set #read sab.var 0
execute store result storage sa_bots:bot_data this.respawn_time int 1 run scoreboard players get #read sab.var
#respawn the bot when time <= 0
execute if score #read sab.var matches ..0 run function sa_bots:bot/top_state/active/missing/spawn_mode_index

#we updated respawn time! sync storage again
data modify storage sa_bots:bot_data this.updateOrigin set value 1