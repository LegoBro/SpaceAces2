#executed by a bot waypoint Marker


#should we be checking if we're obstructed?
tag @s[tag=sab.waypointCanBeBlocked] remove sab.waypointCanBeBlocked
tag @s[tag=sab.waypointMightBeBlocked] add sab.waypointCanBeBlocked

#tag clean-up
tag @s[tag=sab.waypointMightBeBlocked] remove sab.waypointMightBeBlocked
tag @s remove sab.validateEventData