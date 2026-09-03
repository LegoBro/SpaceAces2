#executed by target waypoint
#with storage sa_bots:waypoint
#$(channel) = the channel we're looking to follow
#$(i) = what index of the source waypoint's outgoing list we're on


#read data
scoreboard players set #distance_to_sector sab.var 2147483647
$execute if score @s sab.navSectorCacheChannel$(channel) matches -2147483648..2147483647 run \
    scoreboard players operation #distance_to_sector sab.var = @s sab.navSectorCacheChannel$(channel)
$scoreboard players set #set_index sab.var $(i)

#store retreived data on a marker
execute summon marker run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/marker_prepare_data