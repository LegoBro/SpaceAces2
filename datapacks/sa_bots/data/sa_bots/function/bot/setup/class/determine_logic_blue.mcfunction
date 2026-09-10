#set logic based on game mode


#limited lives in duel, plant&defend
execute if score Gamemode settings matches 0 run scoreboard players set #class_loggic_limited_lives sab.var 1
execute if score Gamemode settings matches 7 run scoreboard players set #class_loggic_limited_lives sab.var 1

#ctf is ctf
execute if score Gamemode settings matches 6 run scoreboard players set #class_loggic_ctf sab.var 1
