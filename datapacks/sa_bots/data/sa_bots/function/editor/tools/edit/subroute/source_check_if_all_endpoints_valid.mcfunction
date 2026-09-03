#executed by a waypoint

#keep track of whether there are problems
scoreboard players set #error_found sab.var 0

#iterate through all outgoing connections
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.outgoing[0] run function sa_bots:editor/tools/edit/subroute/source_check_endpoints_iterate with storage sa_bots:waypoint


#no more tag if we're fixed
execute if score #error_found sab.var matches 0 run tag @s remove sab.hasUndefinedEndpoints