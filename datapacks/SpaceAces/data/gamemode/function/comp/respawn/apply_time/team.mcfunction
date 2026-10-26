## Applies respawn time scores

scoreboard players operation @a[team=red] respawnTime = gamemode.respawn.time.red Numbers
scoreboard players operation @a[team=blue] respawnTime = gamemode.respawn.time.blue Numbers

# Bots
execute store result storage gamemode:comp bot.respawn_time.red.duration int 1 run scoreboard players get gamemode.respawn.time.red Numbers
execute store result storage gamemode:comp bot.respawn_time.blue.duration int 1 run scoreboard players get gamemode.respawn.time.blue Numbers
execute as @e[type=mannequin,tag=sab.botEntity,team=red] at @s run function sa_bots:api/bot_entity/duration_macro_set_respawn_time with storage gamemode:comp bot.respawn_time.red
execute as @e[type=mannequin,tag=sab.botEntity,team=blue] at @s run function sa_bots:api/bot_entity/duration_macro_set_respawn_time with storage gamemode:comp bot.respawn_time.blue