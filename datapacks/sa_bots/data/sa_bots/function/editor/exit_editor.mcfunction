#executed by a player as they're leaving the bot path editor


#get any editor text menus off the screen
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

#clean up inventory
clear @s *[custom_data~{wpEditorTool:1b}]

#clean up tags
tag @s remove sab.botPathEdit
tag @s remove sab.autoConnectWaypoints
tag @s remove sab.autoSpreadWaypoints
tag @s remove sab.signal_1
tag @s remove sab.signal_2
tag @s remove sab.signal_3
tag @s remove sab.signal_4
scoreboard players reset @s sab.signal
tag @s remove sab.noClearIncoming
tag @s remove sab.noClearOutgoing
tag @s remove sab.noClearSpread
tag @s remove sab.noClearSector
tag @s remove sab.noClearTags

#clean up scores
scoreboard players reset @s sab.autoAssignSector
scoreboard players reset @s sab.waypointSpreadFocus
scoreboard players reset @s sab.waypointEditFocus
scoreboard players reset @s sab.waypointReference
scoreboard players reset @s sab.waypointLastPlaced
scoreboard players reset @s sab.waypointLastEdited
scoreboard players reset @s sab.defineConnectionEndIndex

#remove sab.carrotInput objective if we're the last player
execute unless entity @a[tag=sab.botPathEdit] run scoreboard objectives remove sab.carrotInput