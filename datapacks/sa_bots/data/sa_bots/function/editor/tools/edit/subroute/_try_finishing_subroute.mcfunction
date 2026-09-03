#executed by the target waypoint


#cancel if we tried to link a waypoint to itself
execute if score #waypoint_last_edited sab.var = #success sab.var run return run scoreboard players set #success_defined_endpoint sab.var -1
#=====

# #success sab.var = target waypoint id (us)
scoreboard players operation #waypoint_target sab.var = #success sab.var
# #waypoint_last_edited sab.var = source waypoint id
scoreboard players operation #waypoint_source sab.var = #waypoint_last_edited sab.var
# #set_index sab.var = the index we need to write at



#we need to add a reference to this waypoint at the correct index of the source waypoint's outgoing list
#get source name
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get #waypoint_source sab.var
function sa_uuid4:convert
data modify storage sa_bots:waypoint waypoint_source_string set from storage uuid:out plain
#get target name
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get #waypoint_target sab.var
function sa_uuid4:convert
data modify storage sa_bots:waypoint waypoint_target_string set from storage uuid:out plain
#store index
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #set_index sab.var
function sa_bots:editor/tools/edit/subroute/add_outgoing_reference_to_source_macro with storage sa_bots:waypoint

#quit out if it didn't work
execute if score #success_defined_endpoint sab.var matches -2 run return fail
#=====


#remove incoming connection from source waypoint, just in case it already exists
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.incoming[0] run function sa_bots:editor/tools/edit/subroute/remove_incoming_id_iterate with storage sa_bots:waypoint

#we need to add a new incoming connection to this waypoint and mark it as a subroute origin reference
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get #waypoint_source sab.var
function sa_uuid4:convert
data modify storage sa_bots:waypoint waypoint_source_string set from storage uuid:out plain
function sa_bots:editor/tools/edit/subroute/add_incoming_connection_to_target_macro with storage sa_bots:waypoint

#target should be tagged. it will need to keep track of whether it is still connected to its sources
tag @s add sab.isSubrouteEndpoint