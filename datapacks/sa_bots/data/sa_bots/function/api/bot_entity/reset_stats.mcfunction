#executed by a bot entity


#reset stats
scoreboard players set @s stat.game.assists 0
scoreboard players set @s stat.game.damage_dealt 0
scoreboard players set @s stat.game.damage_taken 0
scoreboard players set @s stat.game.deaths 0
scoreboard players set @s stat.game.headshots 0
scoreboard players set @s stat.game.healing_dealt 0
scoreboard players set @s stat.game.healing_received 0
scoreboard players set @s stat.game.object_kills 0
scoreboard players set @s stat.game.play_time 0
scoreboard players set @s stat.game.player_kills 0
scoreboard players set @s stat.game.shots_fired 0
scoreboard players set @s stat.game.shots_hit 0
scoreboard players set @s stat.game.ults_used 0

#update storage
function sa_bots:bot/storage/update_all_stats