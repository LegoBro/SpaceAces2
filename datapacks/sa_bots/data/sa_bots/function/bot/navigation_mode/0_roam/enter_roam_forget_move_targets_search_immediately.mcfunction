#executed by bot entity


#start looking at waypoints again
scoreboard players set @s sab.botWPSearchCooldown 0

#clear move_taget list entirely
data modify entity @s data.move_targets set value []

#set state
scoreboard players set @s sab.botNavigationMode 0
scoreboard players set @s sab.botRoamTime 0
scoreboard players set @s sab.botLookingForSubTargets 0