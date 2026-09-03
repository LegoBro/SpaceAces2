#executed by source node

#grab uuid4 of target node
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.$(list)[$(i)][1]
#now go look up coordinates on the target node
scoreboard players set #success sab.var 0
function sa_bots:editor/waypoint_connection_length/get_coordinates_of_target with storage sa_bots:waypoint

#calculate length of 3D vector
#please excuse the sab.variable re-use. i'm trying to cut down on the number of operations we're doing
#i'm also doing this inline because i'm a cheapskate

#get delta of all components
#(waypoint_x2 = delta_x)
scoreboard players operation #waypoint_x2 sab.var -= #waypoint_x sab.var
execute if score #waypoint_x2 sab.var matches ..-1 run scoreboard players operation #waypoint_x2 sab.var *= #-1 sab.var
#(waypoint_y2 = delta_y)
scoreboard players operation #waypoint_y2 sab.var -= #waypoint_y sab.var
execute if score #waypoint_y2 sab.var matches ..-1 run scoreboard players operation #waypoint_y2 sab.var *= #-1 sab.var
#(waypoint_z2 = delta_z)
scoreboard players operation #waypoint_z2 sab.var -= #waypoint_z sab.var
execute if score #waypoint_z2 sab.var matches ..-1 run scoreboard players operation #waypoint_z2 sab.var *= #-1 sab.var

#square all components
scoreboard players operation #waypoint_x2 sab.var *= #waypoint_x2 sab.var
scoreboard players operation #waypoint_y2 sab.var *= #waypoint_y2 sab.var
scoreboard players operation #waypoint_z2 sab.var *= #waypoint_z2 sab.var

#add together
scoreboard players operation #waypoint_x2 sab.var += #waypoint_y2 sab.var
scoreboard players operation #waypoint_x2 sab.var += #waypoint_z2 sab.var
#now: waypoint_x2 = (delta_x)^2 + (delta_y)^2 + (delta_z)^2

#now map it onto the correct integer distance using my janky miniature lookup table
function sa_bots:editor/waypoint_connection_length/dumb_sqrt/_map_sqrt_index
$execute if score #success sab.var matches 1 store result entity @s data.$(list)[$(i)][2] int 1 run scoreboard players get #distance sab.var


#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.$(list)[$(iplus1)] run function sa_bots:editor/waypoint_connection_length/iterate with storage sa_bots:waypoint