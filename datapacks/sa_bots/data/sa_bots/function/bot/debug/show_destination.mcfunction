#show what we're thinking
data modify storage sa_bots:waypoint_info text_dump set from entity @s data.destinations[0]
execute positioned ~ ~2 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info"}'}

#our destination should also show something
data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.destinations[0].uuid4
data modify storage sa_bots:waypoint command set value "execute positioned ~ ~2 ~ summon text_display run function sa_bots:bot/debug/show_text_macro {scale:'10.0f',text:'{translate:sa_bot.debug.target,color:blue}'}"
function sa_bots:editor/utility/run_command_on_waypoint_macro with storage sa_bots:waypoint