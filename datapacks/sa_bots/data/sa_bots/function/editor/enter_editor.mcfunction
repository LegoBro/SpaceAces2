#executed by a player on the tick they start using the path editor


#we at the pizza hut
tag @s add sab.botPathEdit
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