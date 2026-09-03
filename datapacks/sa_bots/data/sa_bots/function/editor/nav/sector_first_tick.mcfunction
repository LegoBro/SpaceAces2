#executed by anything


#all nodes within the sector we're generating paths into are distance 0, all others are 9999999
$execute as @e[type=marker,tag=sab.botWaypointGeneric,tag=!sab.sector.$(nav_index)] run scoreboard players set @s sab.navCalc 9999999
$execute as @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.$(nav_index)] run scoreboard players set @s sab.navCalc 0
$execute if score #nav_calc_phase sab.var matches 0 as @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.$(nav_index)] run data modify entity @s data.distanceToSector[$(nav_index)][0] set value 0
$execute if score #nav_calc_phase sab.var matches 1 as @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.$(nav_index)] run data modify entity @s data.distanceToSector[$(nav_index)][1] set value 0

#nodes within the sector that are bordering other sectors will be the first to propagate outwards
$tag @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector_is_border,tag=sab.sector.$(nav_index)] add sab.nav_calc_next_tick


#output
$execute if score #nav_show_output sab.var matches 1.. run tellraw @a [{translate:"sa_bot.generic.name_bracket",with:[{translate:"sa_bot.nav_output.nav_output"}]}," ",{translate:"sa_bot.nav_output.started_sector",with:[{text:"$(nav_index)"}]}]