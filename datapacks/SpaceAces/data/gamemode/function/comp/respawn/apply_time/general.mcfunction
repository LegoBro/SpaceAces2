## Applies respawn time scores

scoreboard players operation @a respawnTime = gamemode.respawn.time Numbers

# Bots
execute store result storage gamemode:comp bot.respawn_time.general.duration int 1 run scoreboard players get gamemode.respawn.time Numbers
execute as @e[type=mannequin,tag=sab.botEntity] at @s run function sa_bots:api/bot_entity/duration_macro_set_respawn_time with storage gamemode:comp bot.respawn_time.general