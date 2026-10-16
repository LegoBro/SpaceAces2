#executed by system

#sa_bots:bot_data this = the current bot we're referring to


#get rid of previous respawn countdown. we will re-generate it again when needed
data remove storage sa_bots:bot_data this.respawn_time_countdown

#get data ready
data modify storage sa_bots:generic username set from storage sa_bots:bot_data this.profile.username
data modify storage sa_bots:generic profile set from storage sa_bots:bot_data this.profile.profile


#-----------------------------------
#determine spawn mode based on active Space Aces gamemode

#assume regular teams spawning by default (execute if data storage space_aces:selected_gamemode gamemode{respawn:"team"} ...)
scoreboard players set #bot_spawn_mode sab.var 1
#payload (not implemented right now)
#execute if score Gamemode settings matches 3 run scoreboard players set #bot_spawn_mode sab.var 2
#ffa
execute if data storage space_aces:selected_gamemode gamemode{respawn:"random"} run scoreboard players set #bot_spawn_mode sab.var 3
#no respawn? do nothing
execute if data storage space_aces:selected_gamemode gamemode{respawn:"none"} run scoreboard players set #bot_spawn_mode sab.var -2
#-----------------------------------

#first time spawning? use different logic
execute if data storage sa_bots:bot_data this{first_spawn:1} run function sa_bots:bot/top_state/active/missing/spawn_mode_index_first_spawn

#override if some location was already defined by Space Aces (#bot_spawn_mode sab.var = -1)
execute if data storage sa_bots:bot_data this.respawn_location run function sa_bots:bot/top_state/active/missing/spawn_mode_location_override


#-----------------------------------
#determine what team the player should be on

#assume regular teams by default
scoreboard players set #bot_team_assignment_mode sab.var 0

#ffa
execute if data storage space_aces:selected_gamemode gamemode{needs_teams:"false"} run scoreboard players set #bot_team_assignment_mode sab.var 1
#-----------------------------------


#do something depending on how we're supposed to respawn the bot
execute unless score #bot_spawn_mode sab.var matches -2147483648..2147483647 run scoreboard players set #bot_spawn_mode sab.var 0
execute if score #bot_spawn_mode sab.var matches -1 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_predefined_location with storage sa_bots:generic
execute if score #bot_spawn_mode sab.var matches 0 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_anywhere
execute if score #bot_spawn_mode sab.var matches 1 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_teams
execute if score #bot_spawn_mode sab.var matches 2 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_teams_payload
execute if score #bot_spawn_mode sab.var matches 3 run function sa_bots:bot/top_state/active/missing/try_respawn_bot_ffa
