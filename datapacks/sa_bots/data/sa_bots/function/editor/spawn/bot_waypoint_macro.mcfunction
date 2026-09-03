#called with storage sa_bots:waypoints
#$(next_uuid4)

#this should produce a Marker with a UUID that can be easier referenced by the name "b-0-0-0-[DATA]"

$summon marker ~ ~ ~ {Tags:["sab.botWaypoint","sab.botWaypointGeneric","sab.setWpData"],UUID:[I;11,0,0,$(next_uuid4)]}