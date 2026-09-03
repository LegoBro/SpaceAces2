#executed by a player when they switch off of the "Waypoint Spread" tool


#forget waypoint focus
scoreboard players reset @s sab.waypointSpreadFocus

#get rid of menu
execute if score @s sab.menuPage matches 12 run scoreboard players set @s sab.menuPage 0
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"