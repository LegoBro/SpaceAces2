#executed by a temporary Marker which exists only to hold this here data


#tag self
tag @s add sab.routeSort

#write the data
scoreboard players operation @s sab.markDistance = #distance_to_sector sab.var
scoreboard players operation @s sab.markIndex = #set_index sab.var
scoreboard players operation @s sab.markEvent = #set_event sab.var

#make sure this dies! it will be killed manually if valid, but if invalid it will be ignored and garbage collected
scoreboard players set @s sab.lifespan 1