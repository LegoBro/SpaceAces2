#figure out what team this bot will be on
function sa_bots:bot/setup/team/red_vs_blue/evaluate_on_respawn


#execute at a random waypoint
execute at @e[type=marker,tag=sab.botWaypointGeneric,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic