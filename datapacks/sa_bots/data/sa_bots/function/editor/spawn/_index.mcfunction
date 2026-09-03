#executed by the vex that was just spawned


#spawn something based on what we are
execute if entity @s[tag=sab.botWaypointGeneric] run function sa_bots:editor/spawn/bot_waypoint
execute if entity @s[tag=sab.botSubroute] run function sa_bots:editor/spawn/bot_subroute
#...

#done. get rid of vex
tag @s remove sab.wpSpawn
scoreboard players set @s sab.lifespan 0