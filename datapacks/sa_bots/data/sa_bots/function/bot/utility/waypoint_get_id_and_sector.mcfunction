#executed by a bot waypoint
data modify storage sa_bots:generic get_waypoint.id set from entity @s UUID[3]
data modify storage sa_bots:generic get_waypoint.uuid4 set from entity @s data.uuid4
data modify storage sa_bots:generic get_waypoint.sector set from entity @s data.sector

#we did it
scoreboard players set #found_destination sab.var 1