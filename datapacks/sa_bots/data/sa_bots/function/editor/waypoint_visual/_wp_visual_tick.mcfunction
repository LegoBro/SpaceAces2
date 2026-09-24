#executed by a bot waypoint Marker


#clean up tag
tag @s remove sab.visualizeBotWaypoint


#particles
execute if entity @s[tag=sab.botWaypointGeneric] run particle dust{color:[1,0,0],scale:1.5f} ~ ~.25 ~ 0 0 0 0 1 force
execute if entity @s[tag=sab.botSubroute] run particle dust{color:[1,1,1],scale:1.2f} ~ ~.25 ~ 0 0 0 0 1 force
#...

#show spread boundaries if someone wants to see that
execute if entity @s[tag=sab.visualizeBotWaypointSpread] run function sa_bots:editor/waypoint_visual/show_spread/set_boundaries


#kick out if we aren't showing any more detailed information
execute unless entity @s[tag=sab.visualizeBotWaypointDetailed] run return 0
#=====


#clean up second tag
tag @s remove sab.visualizeBotWaypointDetailed


#show name (temporary text_display)
data modify storage sa_bots:waypoint name[1].text set from entity @s data.uuid4
execute positioned ~ ~1 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_uuid4

#show outgoing pathways
function sa_bots:editor/waypoint_visual/show_outgoing_paths
tag @s remove sab.visualizeOutgoingID

#show special tags this waypoint has (only when holding Edit or Clear tools to avoid visual clutter)
execute if entity @s[tag=sab.visualizeEventNames] run function sa_bots:editor/waypoint_visual/show_tags
tag @s remove sab.visualizeEventNames

#warn if we have undefined endpoints
execute if entity @s[tag=sab.hasUndefinedEndpoints] run function sa_bots:editor/tools/edit/subroute/source_check_if_all_endpoints_valid
execute if entity @s[tag=sab.hasUndefinedEndpoints] positioned ~ ~.5 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro {text:'{translate:"sa_bot.menu.undefined_subroute_endpoint",color:red}'}

#show subroute endpoints
execute if entity @s[tag=sab.isSubrouteEndpoint] positioned ~ ~ ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro {text:'{translate:"sa_bot.menu.subroute_endpoint_nametag",color:green}'}

#show nav channel
execute if score #show_nav_channel sab.var matches 1.. if entity @s[tag=sab.botWaypointGeneric] positioned ~ ~.5 ~ run function sa_bots:editor/waypoint_visual/nametag_nav_channel_macro with storage sa_bots:waypoint_info

#show sector
execute if data entity @s data.sector run data modify storage sa_bots:waypoint sector_name[1] set from entity @s data.sector
execute unless data entity @s data.sector run data modify storage sa_bots:waypoint sector_name[1] set value "NONE"
execute if entity @s[tag=sab.visualizeBotWaypointSector] positioned ~ ~1.4 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_sector
tag @s remove sab.visualizeBotWaypointSector
function sa_bots:editor/utility/update_sector