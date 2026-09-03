#executed by system

#$(index) = the index that needs to update


#sync data
$data modify storage sa_bots:bot_data bots[$(index)] set from storage sa_bots:bot_data this

#remove flag
data modify storage sa_bots:bot_data this.updateOrigin set value 0