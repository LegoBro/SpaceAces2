#executed by a waypoint as it clears all of its data


#clear connections
execute if entity @a[tag=sab.usedEditTool,tag=!sab.noClearOutgoing] run function sa_bots:editor/tools/clear/waypoint_clear_outgoing
execute if entity @a[tag=sab.usedEditTool,tag=!sab.noClearIncoming] run function sa_bots:editor/tools/clear/waypoint_clear_incoming

#clear other stuff
execute if entity @a[tag=sab.usedEditTool,tag=!sab.noClearSpread] run data remove entity @s data.spread
execute if entity @a[tag=sab.usedEditTool,tag=!sab.noClearSector] run data remove entity @s data.sector
function sa_bots:editor/utility/update_sector
execute if entity @a[tag=sab.usedEditTool,tag=!sab.noClearTags] run function sa_bots:editor/tools/clear/waypoint_clear_tags


#feedback
particle block{block_state:{id:"magenta_concrete"}} ~ ~.25 ~ 0.3 0.3 0.3 1 20 force
particle cloud ~ ~.25 ~ 0.25 0.25 0.25 0.05 5 force
playsound ui.cartography_table.take_result master @a ~ ~ ~ 1 1.5

#we did it
scoreboard players set #success sab.var 1