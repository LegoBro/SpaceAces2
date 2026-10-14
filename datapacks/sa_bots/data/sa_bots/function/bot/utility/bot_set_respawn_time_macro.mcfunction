#executed by bot entity
#executed at the location we want to respawn the bot at
# $(i) = the index of the bot within sa_bots:bot_data bots[] array
# $(duration) = duration of how long the bot's respawn time should be

$data modify storage sa_bots:bot_data bots[$(i)].respawn_time set value $(duration)
$data modify storage sa_bots:bot_data bots[$(i)].respawn_time_countdown set value $(duration)