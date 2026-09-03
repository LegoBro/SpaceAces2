#executed by a waypoint with tag=sab.isSubrouteEndpoint



#keep track of how many valid subroute origin references we have
scoreboard players set #count sab.var 0
#if this ends up being 0, we lose tag=sab.isSubrouteEndpoint


#get our uuid4 as integer
execute store result score #waypoint sab.var run data get entity @s UUID[3]

#target waypoints will be running this command:
data modify storage sa_bots:waypoint command set value "function sa_bots:editor/tools/edit/subroute/endpoint_check_connection_iterate with storage sa_bots:waypoint"

#we must check all incoming connections marked as subroute origin
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.incoming[0] run function sa_bots:editor/tools/edit/subroute/endpoint_check_source_iterate with storage sa_bots:waypoint

#not an endpoint if we have no incoming
execute if score #count sab.var matches 0 run tag @s remove sab.isSubrouteEndpoint