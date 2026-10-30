## Applies blue respawn time
scoreboard players operation @a[team=blue] respawnTime = gamemode.respawn.time.blue Numbers
execute store result storage gamemode:comp bot.respawn_time.blue.duration int 1 run scoreboard players get gamemode.respawn.time.blue Numbers
execute as @e[type=mannequin,tag=sab.botEntity,team=blue] at @s run function sa_bots:api/bot_entity/duration_macro_set_respawn_time with storage gamemode:comp bot.respawn_time.blue