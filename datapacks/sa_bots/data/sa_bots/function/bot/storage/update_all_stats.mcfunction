#executed by bot entity


# stat.game.assists
# stat.game.damage_dealt
# stat.game.damage_taken
# stat.game.deaths
# stat.game.headshots
# stat.game.healing_dealt
# stat.game.healing_received
# stat.game.object_kills
# stat.game.play_time
# stat.game.player_kills
# stat.game.shots_fired
# stat.game.shots_hit
# stat.game.ults_used

#first, stage the data into a generic storage
execute store result storage sa_bots:bot_data stat.assists int 1 run scoreboard players get @s stat.game.assists
execute store result storage sa_bots:bot_data stat.damage_dealt int 1 run scoreboard players get @s stat.game.damage_dealt
execute store result storage sa_bots:bot_data stat.damage_taken int 1 run scoreboard players get @s stat.game.damage_taken
execute store result storage sa_bots:bot_data stat.deaths int 1 run scoreboard players get @s stat.game.deaths
execute store result storage sa_bots:bot_data stat.headshots int 1 run scoreboard players get @s stat.game.headshots
execute store result storage sa_bots:bot_data stat.healing_dealt int 1 run scoreboard players get @s stat.game.healing_dealt
execute store result storage sa_bots:bot_data stat.healing_received int 1 run scoreboard players get @s stat.game.healing_received
execute store result storage sa_bots:bot_data stat.object_kills int 1 run scoreboard players get @s stat.game.object_kills
execute store result storage sa_bots:bot_data stat.play_time int 1 run scoreboard players get @s stat.game.play_time
execute store result storage sa_bots:bot_data stat.player_kills int 1 run scoreboard players get @s stat.game.player_kills
execute store result storage sa_bots:bot_data stat.shots_fired int 1 run scoreboard players get @s stat.game.shots_fired
execute store result storage sa_bots:bot_data stat.shots_hit int 1 run scoreboard players get @s stat.game.shots_hit
execute store result storage sa_bots:bot_data stat.ults_used int 1 run scoreboard players get @s stat.game.ults_used

#copy the data into permanent storage
execute store result storage sa_bots:generic index int 1 run scoreboard players get @s sab.botID
function sa_bots:bot/storage/update_all_stats_go with storage sa_bots:generic