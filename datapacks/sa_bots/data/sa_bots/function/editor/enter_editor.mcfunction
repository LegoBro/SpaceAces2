#executed by a player on the tick they start using the path editor


#we at the pizza hut
tag @s remove sab.autoConnectWaypoints
tag @s remove sab.noClearIncoming
tag @s remove sab.noClearOutgoing
tag @s remove sab.noClearSpread
tag @s remove sab.noClearSector
tag @s remove sab.noClearTags

#we at the taco bell
scoreboard objectives add sab.carrotInput minecraft.used:carrot_on_a_stick

#we at the combination pizza hut and taco bell
scoreboard players set @s sab.waypointReference 0
scoreboard players set @s sab.waypointEditFocus 0
scoreboard players set @s sab.waypointSpreadFocus 0
scoreboard players set @s sab.autoAssignSector 0
scoreboard players reset @s sab.waypointLastPlaced
scoreboard players reset @s sab.waypointLastEdited
scoreboard players reset @s sab.defineConnectionEndIndex
execute unless score @s sab.assignSector matches 1.. run scoreboard players set @s sab.assignSector 1

#if we're currently the only person in edit mode, don't show any nav channels
execute unless entity @a[tag=sab.botPathEdit] run scoreboard players reset #show_nav_channel sab.var

#get editor tag
tag @s add sab.botPathEdit