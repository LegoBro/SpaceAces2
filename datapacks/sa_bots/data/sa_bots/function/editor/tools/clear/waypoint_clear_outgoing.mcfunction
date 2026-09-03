#executed by a waypoint that is clearing all outgoing connections it has


#get our uuid4 as integer
execute store result score #waypoint sab.var run data get entity @s UUID[3]


#target waypoints will be running this command:
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/waypoint_delete/remove_id_subroute_recursive with storage sa_bots:waypoint"

#remove ourselves from incoming list from all waypoints on our outgoing list (endpoint reference)
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.outgoing[0] run function sa_bots:editor/waypoint_delete/interate_through_endpoints with storage sa_bots:waypoint


#target waypoints will be running this command:
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/waypoint_delete/remove_id_recursive with storage sa_bots:waypoint"

#remove ourselves from incoming list from all waypoints on our outgoing list
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
data modify storage sa_bots:waypoint list set value "outgoing"
data modify storage sa_bots:waypoint list_target set value "incoming"
execute if data entity @s data.outgoing[0] run function sa_bots:editor/waypoint_delete/interate_through_list with storage sa_bots:waypoint


#now clear our own lists (this is easy)
data remove entity @s data.outgoing

#this is an absolutely wild and error-prone way to program
#2 layers of recursion and macros galore
#good thing i am a Brofessional