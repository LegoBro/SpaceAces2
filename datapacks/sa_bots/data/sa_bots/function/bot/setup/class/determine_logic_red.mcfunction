#set logic based on game mode


#limited lives in duel, plant&defend
execute if data storage space_aces:selected_gamemode gamemode{bot_strategy:"limited_lives_team_fighting"} run scoreboard players set #class_loggic_limited_lives sab.var 1

#red defends on payload
execute if data storage space_aces:selected_gamemode gamemode{bot_strategy:"payload"} run scoreboard players set #class_loggic_defense sab.var 1

#ctf is ctf
execute if data storage space_aces:selected_gamemode gamemode{bot_strategy:"ctf"} run scoreboard players set #class_loggic_ctf sab.var 1
