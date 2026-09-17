#adopt only the data that changed this tick
execute if score #bot_update_ultimate_charge sab.var matches -2147483648..2147483647 run \
    function sa_bots:bot/storage/apply_small_update/ultimate_charge with storage sa_bots:generic
#...


#reset flags
scoreboard players reset #bot_update_ultimate_charge sab.var
#...