#executed by bot entity


#send data to storage
function sa_bots:bot/storage/update_ultimate_charge
#...

#immediately apply changes to storage (done so this function can be called at any time)
scoreboard players operation #input_i sab.var = @s sab.botID
function sa_bots:bot/storage/apply_small_update/_accept_small_data_updates


#die
tag @s remove sab.botEntity
scoreboard players set @s sab.lifespan 0