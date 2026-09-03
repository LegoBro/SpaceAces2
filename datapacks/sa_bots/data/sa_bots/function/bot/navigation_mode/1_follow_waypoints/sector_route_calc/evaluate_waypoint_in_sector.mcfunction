#executed by target waypoint
#$(nav_index) = what sector we're doing calculations within
#$(channel) = what nav cache channel we're using


#don't do anything if we're from another sector
$execute unless entity @s[tag=sab.sector.$(nav_index)] run return 0

#if we don't have sab.navCalc, set it to 9999999
execute unless score @s sab.navCalc matches -2147483648..2147483647 run scoreboard players set @s sab.navCalc 9999999

#don't do anything if the distance isn't any better than what we already have
execute unless score #distance sab.var < @s sab.navCalc run return 0
#=====


#ok, so we found a route that's closer to the sector we're interested in

#set the new distance on ourselves
scoreboard players operation @s sab.navCalc = #distance sab.var
$scoreboard players operation @s sab.navSectorCacheChannel$(channel) = #distance sab.var

#next tick we will propagate and check our neighbors
tag @s add sab.nav_calc_next_tick
scoreboard players set @s sab.navCalcNextTick 1

#update global variables
scoreboard players add #nav_calc_sector_progress sab.var 1
scoreboard players add #nav_this_tick sab.var 1
scoreboard players add #nav_total_count sab.var 1