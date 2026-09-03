#executed by target waypoint
#with storage sa_bots:waypoint
#$(nav_index) = the sector we're trying to navigate towards
#$(i) = what index of the source waypoint's outgoing list we're on


#read data
$execute store result score #distance_to_sector sab.var run data get entity @s data.distanceToSector[$(nav_index)][0]
$scoreboard players set #set_index sab.var $(i)

#store retreived data on a marker
execute summon marker run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/marker_prepare_data