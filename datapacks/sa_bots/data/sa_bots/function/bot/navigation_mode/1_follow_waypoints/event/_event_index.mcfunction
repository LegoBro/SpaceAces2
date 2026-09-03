#executed by a bot

#score "#valid_event sab.var" will be set to 1 if we can do the event


execute if score #event sab.var matches 1 run return run scoreboard players set #valid_event sab.var 0
#...