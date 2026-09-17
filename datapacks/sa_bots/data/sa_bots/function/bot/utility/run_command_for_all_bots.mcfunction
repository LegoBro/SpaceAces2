#this executes a command for every bot
#note that this does nothing to execution context and does NOT run a command on a bot entity
#we're purely dealing with storage, here

#macro agrgument
$data modify storage sa_bots:generic command set value "$(command)"

#run through every element
data modify storage sa_bots:generic i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:generic iplus1 int 1 run scoreboard players get #i sab.var
function sa_bots:bot/utility/run_command_for_all_bots_iterate with storage sa_bots:generic