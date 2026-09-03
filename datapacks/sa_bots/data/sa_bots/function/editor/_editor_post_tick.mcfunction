#executed every tick by system, but only if players with tag=sab.botPathEdit existed on this tick


#show selected waypoints
execute as @e[type=marker,scores={sab.selected=0..}] at @s run particle end_rod ~ ~.5 ~ 0 0.5 0 0 1 force

#delete waypoints when requested
execute as @e[type=marker,tag=sab.deleteWaypoint,limit=5] at @s run function sa_bots:editor/waypoint_delete/_delete_this


#waypoints need to keep recalculating the length of all incoming connections
#possible a waypoint could get moved!
execute if score #10Hz sab.var matches 0 as @e[type=marker,tag=sab.visualizeBotWaypoint,limit=5,sort=random] at @s run function sa_bots:editor/waypoint_connection_length/_measure_all_incoming

#waypoints also need to recalculate sub-route stuff if needed
execute if score #2sec sab.var matches 7 as @e[type=marker,tag=sab.isSubrouteEndpoint,limit=10,sort=random] at @s run function sa_bots:editor/tools/edit/subroute/endpoint_check_sources


#all waypoints deemed "near" a player should be visualized
#(this is not particularly efficient, but this is for development so it doesn't matter very much)
execute if score #show_nav_channel sab.var matches 1.. store result storage sa_bots:waypoint_info show_nav_index int 1 run scoreboard players get #show_nav_channel sab.var
execute as @e[type=marker,tag=sab.visualizeBotWaypoint] at @s run function sa_bots:editor/waypoint_visual/_wp_visual_tick


#all vexes with "sab.wpSpawn" should spawn a Marker
execute as @e[type=vex,tag=sab.wpSpawn] at @s run function sa_bots:editor/spawn/_index


#clear temporary tags
tag @a[tag=sab.seeSpreadBoundaries] add sab.seeSpreadBoundaries