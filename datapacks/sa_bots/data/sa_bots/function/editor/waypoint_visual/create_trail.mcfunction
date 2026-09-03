#executed by the target waypoint Marker
#executed at the position of the source waypoint Marker

#anything connected to a subroute is white
execute if entity @s[tag=sab.botSubroute] unless score #read sab.var matches 1.. run data modify storage sa_bots:waypoint trail_color set value "[1,1,1]"

data modify storage sa_bots:waypoint x set from entity @s Pos[0]
data modify storage sa_bots:waypoint y set from entity @s Pos[1]
data modify storage sa_bots:waypoint z set from entity @s Pos[2]
function sa_bots:editor/waypoint_visual/create_trail_macro with storage sa_bots:waypoint


#show what index we are (if requested)
execute if score #visualize_outgoing_ids sab.var matches 1 unless entity @s[distance=..2.25] facing entity @s feet positioned ^ ^ ^2 positioned ~ ~.4 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_outgoing_id
execute if score #visualize_outgoing_ids sab.var matches 1 if entity @s[distance=..2.25] facing entity @s feet positioned ^ ^ ^0.75 positioned ~ ~.4 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_outgoing_id

#show event name if we're an event (if requested)
execute if score #visualize_event_names sab.var matches 1 if score #read sab.var matches 1.. unless entity @s[distance=..2.25] facing entity @s feet positioned ^ ^ ^2 positioned ~ ~.2 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_event_text with storage sa_bots:waypoint_info
execute if score #visualize_event_names sab.var matches 1 if score #read sab.var matches 1.. if entity @s[distance=..2.25] facing entity @s feet positioned ^ ^ ^0.75 positioned ~ ~.2 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_event_text with storage sa_bots:waypoint_info


#are we a different sector than the source? if so, remember it
scoreboard players set #read1 sab.var -1
execute if data entity @s data.sector store result score #read1 sab.var run data get entity @s data.sector
execute if score #read1 sab.var matches 0.. unless score #sector sab.var = #read1 sab.var run data modify storage sa_bots:waypoint sector_neighbors prepend from entity @s data.sector