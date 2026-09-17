#stage for storage
scoreboard players set #bot_sent_small_data_update sab.var 1
scoreboard players operation #bot_update_ultimate_charge sab.var = @s ultimate_charge

#sync
scoreboard players operation @s sab.dUltimateCharge = @s ultimate_charge