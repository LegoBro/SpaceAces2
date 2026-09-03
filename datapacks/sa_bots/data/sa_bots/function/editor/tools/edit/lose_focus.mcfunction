#executed by a player when they switch off of the "Waypoint Edit" tool


#forget waypoint focus
scoreboard players reset @s sab.waypointEditFocus
scoreboard players reset @s sab.waypointLastEdited
scoreboard players reset @s sab.defineConnectionEndIndex

#get rid of menu
execute if score @s sab.menuPage matches 2 run scoreboard players set @s sab.menuPage 0
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"