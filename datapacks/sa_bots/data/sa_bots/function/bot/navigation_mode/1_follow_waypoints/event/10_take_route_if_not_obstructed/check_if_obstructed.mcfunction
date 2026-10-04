#executed by a routeSort marker that has a reference to the target waypoint of this route

#valid if not obstructed
$execute at b-0-0-0-$(target_uuid4) if block ~ ~ ~ #sa_bots:not_solid run scoreboard players set #valid_event sab.var 1
