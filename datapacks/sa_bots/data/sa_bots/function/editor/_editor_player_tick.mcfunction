#executed every tick by players with "botPathEdit" tag


#kick out if no longer in Creative Mode
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run return run function sa_bots:editor/exit_editor
#=====


#keep track of how many people are running this in a single tick
scoreboard players add #player_in_path_editor sab.var 1

#nearby waypoints should be shown
execute positioned ^ ^ ^10 run tag @e[type=marker,tag=sab.botWaypoint,distance=..38] add sab.visualizeBotWaypoint
execute if score #5Hz sab.var matches 0 positioned ^ ^ ^10 run tag @e[type=marker,tag=sab.botWaypoint,distance=..25] add sab.visualizeBotWaypointDetailed

#make sure we have inventory tools
execute unless items entity @s container.* *[custom_data~{wpEditorTool:1b}] run function sa_bots:editor/inventory_items

#debug, adopt nav channel of nearest bot (only 1 player in editor mode will do this...)
execute if score #debug_adopt_nav_channel sab.var matches 1 \
    unless score #player_in_path_editor sab.var matches 2.. run function sa_bots:editor/utility/adopt_nav_sector_of_nearest_bot


#------------------------------
## INVENTORY TOOLS

#input cooldown to stop extra unwanted inputs
scoreboard players remove @s[scores={sab.inputCooldown=1..}] sab.inputCooldown 1

#selector item
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpSelector:1b}] run function sa_bots:editor/tools/selector/hold_selector

#connector items
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpConnector:1b}] run function sa_bots:editor/tools/connector/hold_connector
#if we have a reference to some waypoint but no longer have the item equipped, forget about it
execute if score @s sab.waypointReference matches 1.. unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpConnector:1b}] run scoreboard players reset @s sab.waypointReference

#waypoint edit 
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpEdit:1b}] run function sa_bots:editor/tools/edit/hold_edit
#if we have a reference to some waypoint but no longer have the item equipped, forget about it
execute if score @s sab.waypointEditFocus matches 1.. unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpEdit:1b}] run function sa_bots:editor/tools/edit/lose_focus

#waypoint clear
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpClear:1b}] run function sa_bots:editor/tools/clear/hold_clear

#waypoint spread
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpSpread:1b}] run function sa_bots:editor/tools/spread/hold_spread
#if we have a reference to some waypoint but no longer have the item equipped, forget about it
execute if score @s sab.waypointSpreadFocus matches 1.. unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpSpread:1b}] run function sa_bots:editor/tools/spread/lose_focus

#sector paint
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpSectorPainter:1b}] run function sa_bots:editor/tools/sector_paint/hold_paint
#------------------------------


#clean up input
scoreboard players reset @s sab.carrotInput
tag @s[tag=sab.signal_1] remove sab.signal_1
tag @s[tag=sab.signal_2] remove sab.signal_2
tag @s[tag=sab.signal_3] remove sab.signal_3
tag @s[tag=sab.signal_4] remove sab.signal_4