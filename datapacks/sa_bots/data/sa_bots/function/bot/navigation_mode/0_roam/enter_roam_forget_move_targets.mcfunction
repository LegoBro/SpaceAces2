#executed by bot entity


#random delay on when we start looking at waypoints again
execute store result score @s sab.botWPSearchCooldown run random value 50..70

#clear move_taget list entirely
data modify entity @s data.move_targets set value []

#set state
scoreboard players set @s sab.botNavigationMode 0
scoreboard players set @s sab.botRoamTime 0
scoreboard players set @s sab.botLookingForSubTargets 0