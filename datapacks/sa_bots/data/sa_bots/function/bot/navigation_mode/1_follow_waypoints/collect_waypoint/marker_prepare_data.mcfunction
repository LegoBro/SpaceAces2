#executed by a temporary Marker which exists only to hold this here data


#tag self
tag @s add sab.routeSort

#write the data
scoreboard players operation @s sab.markDistance = #distance_to_sector sab.var
scoreboard players operation @s sab.markIndex = #set_index sab.var
scoreboard players operation @s sab.markEvent = #set_event sab.var

#if this is event #10, store reference to the next marker
execute if score #set_event sab.var matches 10 run data modify entity @s data.target_uuid4 set from storage sa_bots:generic uuid4


#make sure this dies! it will be killed manually if valid, but if invalid it will be ignored and garbage collected
scoreboard players set @s sab.lifespan 1