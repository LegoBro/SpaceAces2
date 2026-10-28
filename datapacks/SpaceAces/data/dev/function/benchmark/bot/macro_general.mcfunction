## Adds non team bot

$data modify storage dev:game_queue games[0].bots.general append from storage sa_bots:bot_data bots[$(id)].settings.brain