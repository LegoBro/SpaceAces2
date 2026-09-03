$$(command)

#recursion until the end of the list
execute store result storage sa_bots:generic i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:generic iplus1 int 1 run scoreboard players get #i sab.var
$execute if data storage sa_bots:bot_data bots[$(iplus1)] run function sa_bots:bot/utility/run_command_for_all_bots_iterate with storage sa_bots:generic