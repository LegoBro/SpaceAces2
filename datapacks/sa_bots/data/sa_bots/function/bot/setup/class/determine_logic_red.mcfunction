#set logic based on game mode


#limited lives in duel, plant&defend
execute if score Gamemode settings matches 0 run scoreboard players set #class_loggic_limited_lives sab.var 1
execute if score Gamemode settings matches 7 run scoreboard players set #class_loggic_limited_lives sab.var 1

#red defends on payload
execute if data storage space_aces:selected_gamemode gamemode{name:"payload"} run scoreboard players set #class_loggic_defense sab.var 1

#ctf is ctf
execute if data storage space_aces:selected_gamemode gamemode{name:"ctf"} run scoreboard players set #class_loggic_ctf sab.var 1
