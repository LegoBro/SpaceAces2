#executed by target waypoint

#executed with storage sa_bots:waypoint
#$(waypoint_source_string) is UUID4 of source waypoint
#"#waypoint_source sab.var" is integer UUID4 of source waypoint


#note that unlike other connections, we do NOT write a new outgoing connection on the source waypoint.
#hence why we aren't re-using connection code (function sa_bots:editor/tools/connector/pick_second_waypoint_1way_macro)

#we will instead add the reference on an existing outoing entry on the source waypoint (later, not in this function)


#----------
#target: add to target's incoming waypoint list

#avoid duplicates
scoreboard players set #duplicate_found sab.var 0
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
scoreboard players operation #compare sab.var = #waypoint_source sab.var
data modify storage sa_bots:waypoint list set value "incoming"
execute if data entity @s data.incoming[0] run function sa_bots:editor/tools/connector/test_for_duplicate_ids with storage sa_bots:waypoint

#successful add to incoming list on target (note the "1" at the end of the structure. this indicates that this connection is a reference to the origin of a sub-route)
$execute if score #duplicate_found sab.var matches 0 run data modify entity @s data.incoming prepend value [0,"$(waypoint_source_string)",0,0,1]
execute if score #duplicate_found sab.var matches 0 store result entity @s data.incoming[0][0] int 1 run scoreboard players get #waypoint_source sab.var
#----------
