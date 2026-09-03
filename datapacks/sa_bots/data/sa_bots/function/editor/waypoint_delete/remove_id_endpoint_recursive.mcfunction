#executed by target waypoint
#executed with storage sa_bots:waypoint
#"#waypoint sab.var" is the id we're looking to clear

#this function loops through all elements of data.outgoing to try and clear the element with the matching id

#remove reference when we find a match
scoreboard players set #read sab.var -1
$execute if data entity @s data.outgoing[$(j)][3][0] store result score #read1 sab.var run data get entity @s data.outgoing[$(j)][3][0]
$execute if score #read1 sab.var matches 0.. if score #read1 sab.var = #waypoint sab.var run data modify entity @s data.outgoing[$(j)][3][0] set value 0
execute if score #read1 sab.var matches 0.. run tag @s add sab.hasUndefinedEndpoints


#recursion until the end of the list
execute store result storage sa_bots:waypoint j int 1 run scoreboard players get #j sab.var
scoreboard players add #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
$execute if data entity @s data.outgoing[$(jplus1)] run function sa_bots:editor/waypoint_delete/remove_id_endpoint_recursive with storage sa_bots:waypoint