#set spawn mode based on "spawn" field
execute if data storage space_aces:selected_gamemode gamemode{spawn:"team"} run scoreboard players set #bot_spawn_mode sab.var 1
execute if data storage space_aces:selected_gamemode gamemode{spawn:"random"} run scoreboard players set #bot_spawn_mode sab.var 3
#...

#clear flag so we don't repeat this
data modify storage sa_bots:bot_data this.first_spawn set value 0
data modify storage sa_bots:bot_data this.updateOrigin set value 1