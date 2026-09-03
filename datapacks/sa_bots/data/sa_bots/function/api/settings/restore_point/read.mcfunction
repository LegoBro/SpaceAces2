#reset flag
scoreboard players set #restore_point_written sab.var 0

#restore previous bot settings
execute if data storage sa_bots:bot_data restore_point.settings run \
    data modify storage sa_bots:bot_data bot_template set from storage sa_bots:bot_data restore_point

#restore all created bots
execute if data storage sa_bots:bot_data restore_point_bots run \
    data modify storage sa_bots:bot_data bots set from storage sa_bots:bot_data restore_point_bots
