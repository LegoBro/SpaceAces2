#executed by a bot entity
#this causes the bot to deactivate right away


execute store result storage sa_bots:generic i int 1 run scoreboard players get @s sab.botID
execute if loaded ~ ~ ~ run function sa_bots:api/activation/i_macro_deactivate_bot with storage sa_bots:generic