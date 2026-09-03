#executed by system


#all nodes within the sector we're generating paths into are distance 9999999
$execute as @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.$(nav_index)] run scoreboard players set @s sab.navCalc 9999999

#destination node will be the first to propagate outwards
$tag b-0-0-0-$(waypoint_target_string) add sab.nav_calc_next_tick
$scoreboard players set b-0-0-0-$(waypoint_target_string) sab.navCalc 0
$execute if score #nav_calc_phase sab.var matches 0 run scoreboard players set b-0-0-0-$(waypoint_target_string) sab.navSectorCacheChannel$(channel) 0
$execute if score #nav_calc_phase sab.var matches 1 run scoreboard players set b-0-0-0-$(waypoint_target_string) sab.navSectorCacheChannelUC$(channel) 0
