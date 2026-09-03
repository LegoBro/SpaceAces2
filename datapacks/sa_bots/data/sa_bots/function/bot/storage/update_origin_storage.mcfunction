#executed by anything


#move the data on "this" back into permanent storage where it belongs
data modify storage sa_bots:generic index set from storage sa_bots:bot_data this.id
function sa_bots:bot/storage/update_origin_storage_go with storage sa_bots:generic