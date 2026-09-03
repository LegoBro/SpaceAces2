#executed with storage sa_bots:waypoint_info
#$(event_name_index) = the event name we want to look up

$tellraw @a[tag=sab.tellMe] ["   ",{translate:"sa_bot.event_name.$(event_name_index)",color:yellow}]