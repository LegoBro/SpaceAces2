#executed by a bot entity


#show task and goal
execute if score #debug_show_bot_task sab.var matches 1 \
    if entity @a[distance=..10] run function sa_bots:bot/debug/show_task_and_goal

#show destination
execute if score #debug_show_bot_destination sab.var matches 1 \
    if entity @a[distance=..10] if data entity @s data.destinations[0] run function sa_bots:bot/debug/show_destination

#show nav cache channel
execute if score #debug_show_nav_cache sab.var matches 1 \
    if score @s sab.usingNavCacheChanel matches 1.. run function sa_bots:bot/debug/show_nav_cache_channel