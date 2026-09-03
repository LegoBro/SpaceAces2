#executed by bot entity


#random delay on when we start looking at waypoints again
execute store result score @s sab.botWPSearchCooldown run random value 25..50

#clear move_taget list
data modify entity @s data.move_targets set value []

#set state
scoreboard players set @s sab.botNavigationMode 0