#executed by system

#$(index) = the index that needs to update


#sync stats
$data modify storage sa_bots:bot_data bots[$(index)].game.stat set from storage sa_bots:bot_data stat