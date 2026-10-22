#executed by target waypoint
#with storage sa_bots:waypoint
#$(nav_index) = the sector we're trying to navigate towards
#$(i) = what index of the source waypoint's outgoing list we're on


#read data
$execute if score #using_unconditional_nav sab.var matches ..0 store result score #distance_to_sector sab.var run data get entity @s data.distanceToSector[$(nav_index)][0]
$execute if score #using_unconditional_nav sab.var matches 1.. store result score #distance_to_sector sab.var run data get entity @s data.distanceToSector[$(nav_index)][1]
$scoreboard players set #set_index sab.var $(i)

#event 10 requires us to have a reference to this waypoint
execute if score #set_event sab.var matches 10 run data modify storage sa_bots:generic uuid4 set from entity @s data.uuid4

#store retreived data on a marker
execute summon marker run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/marker_prepare_data