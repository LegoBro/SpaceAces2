#executed by a bot entity
#this causes the bot to immediately respawn at the position this command was run at


#respawn location is right here! grab coordinates and stash them
execute store result storage sa_bots:generic i int 1 run scoreboard players get @s sab.botID
execute if loaded ~ ~ ~ run function sa_bots:bot/utility/respawn_bot_at_location_macro with storage sa_bots:generic