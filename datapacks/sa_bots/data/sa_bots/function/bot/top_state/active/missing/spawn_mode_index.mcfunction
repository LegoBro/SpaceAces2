#executed by system

#sa_bots:bot_data this = the current bot we're referring to



#get data ready
data modify storage sa_bots:generic username set from storage sa_bots:bot_data this.profile.username
data modify storage sa_bots:generic profile set from storage sa_bots:bot_data this.profile.profile

#-----------------------------------
#determine spawn mode based on active Space Aces gamemode

#assume regular teams spawning by default
scoreboard players set #bot_spawn_mode sab.var 1
#payload
execute if score Gamemode settings matches 3 run scoreboard players set #bot_spawn_mode sab.var 2
#ffa
execute if score Gamemode settings matches 9 run scoreboard players set #bot_spawn_mode sab.var 3
#-----------------------------------

#do something depending on how we're supposed to respawn the bot
execute unless score #bot_spawn_mode sab.var matches -2147483648..2147483647 run scoreboard players set #bot_spawn_mode sab.var 0
execute if score #bot_spawn_mode sab.var matches 0 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_anywhere
execute if score #bot_spawn_mode sab.var matches 1 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_teams
execute if score #bot_spawn_mode sab.var matches 2 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_teams_payload
execute if score #bot_spawn_mode sab.var matches 3 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_ffa
