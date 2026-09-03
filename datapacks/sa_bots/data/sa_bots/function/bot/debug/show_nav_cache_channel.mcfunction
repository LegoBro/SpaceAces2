#show what channel we're on
data modify storage sa_bots:waypoint_info text_dump set value ["nav cache channel",1]
execute store result storage sa_bots:waypoint_info text_dump[1] int 1 run scoreboard players get @s sab.usingNavCacheChanel
execute positioned ~ ~2.5 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}'}

#waypoints should show channel score
scoreboard players operation #use_channel sab.var = @s sab.usingNavCacheChanel
execute if score #5Hz sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,distance=..50] run function sa_bots:bot/debug/show_waypoint_nav_channel_score