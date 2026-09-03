#executed by a bot waypoint Marker


#target waypoints will be running this command:
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/waypoint_visual/create_trail with storage sa_bots:waypoint"

#show outgoing paths?
execute store result score #visualize_outgoing_ids sab.var run execute if entity @s[tag=sab.visualizeOutgoingID]
execute store result score #visualize_event_names sab.var run execute if entity @s[tag=sab.visualizeEventNames]

#remember what sectors we connect to
scoreboard players set #sector sab.var -1
execute if data entity @s data.sector store result score #sector sab.var run data get entity @s data.sector
data modify storage sa_bots:waypoint sector_neighbors set value [-1]

#iterate through our list of outgoing connections to draw trails and find sector borders
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
data modify storage sa_bots:waypoint list set value "outgoing"
execute if data entity @s data.outgoing[0] run function sa_bots:editor/waypoint_visual/show_outgoing_paths_iterate with storage sa_bots:waypoint

#iterate through incoming connections, solely to figure out sector_neighbors
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/utility/check_incoming_for_sector_borders with storage sa_bots:waypoint"
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.incoming[0] run function sa_bots:editor/utility/check_incoming_for_sector_borders_iterate with storage sa_bots:waypoint


#update the list of what sectors we border
function sa_bots:editor/utility/update_sector_borders