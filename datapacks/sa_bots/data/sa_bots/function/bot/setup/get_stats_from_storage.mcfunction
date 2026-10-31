#executed by bot entity

#sa_bots:bot_data this = the storage associated with this bot


#read everything from storage
execute store result score @s stat.game.assists run data get storage sa_bots:bot_data this.game.stat.assists
execute store result score @s stat.game.damage_dealt run data get storage sa_bots:bot_data this.game.stat.damage_dealt
execute store result score @s stat.game.damage_taken run data get storage sa_bots:bot_data this.game.stat.damage_taken
execute store result score @s stat.game.deaths run data get storage sa_bots:bot_data this.game.stat.deaths
execute store result score @s stat.game.headshots run data get storage sa_bots:bot_data this.game.stat.headshots
execute store result score @s stat.game.healing_dealt run data get storage sa_bots:bot_data this.game.stat.healing_dealt
execute store result score @s stat.game.healing_received run data get storage sa_bots:bot_data this.game.stat.healing_received
execute store result score @s stat.game.object_kills run data get storage sa_bots:bot_data this.game.stat.object_kills
execute store result score @s stat.game.play_time run data get storage sa_bots:bot_data this.game.stat.play_time
execute store result score @s stat.game.player_kills run data get storage sa_bots:bot_data this.game.stat.player_kills
execute store result score @s stat.game.shots_fired run data get storage sa_bots:bot_data this.game.stat.shots_fired
execute store result score @s stat.game.shots_hit run data get storage sa_bots:bot_data this.game.stat.shots_hit
execute store result score @s stat.game.ults_used run data get storage sa_bots:bot_data this.game.stat.ults_used