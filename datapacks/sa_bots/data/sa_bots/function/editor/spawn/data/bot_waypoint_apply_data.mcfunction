#executed by the newly spawned waypoint Marker

#convert uuid[3] to hex
function sa_uuid4:_
#we will now make a sticky note of that and tape it to our face for ease of access
data modify entity @s data.uuid4 set from storage uuid:out plain


#auto assigned sector from owner
execute if score #auto_assign_sector sab.var matches 1.. store result entity @s data.sector int 1 run scoreboard players get #auto_assign_sector sab.var

#make sure nav distance data exists
execute if entity @s[tag=sab.botWaypointGeneric] run \
    data modify entity @s data.distanceToSector set value [0,[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999]]

#cleanup
tag @s remove sab.setWpData