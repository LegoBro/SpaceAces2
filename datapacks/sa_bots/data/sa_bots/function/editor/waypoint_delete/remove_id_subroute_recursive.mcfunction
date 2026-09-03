#executed by target waypoint
#executed with storage sa_bots:waypoint
#"#waypoint sab.var" is the id we're looking to remove

#this function loops through all elements of incoming to try and remove the element with the matching id


#mark element for deletion when we find a match
scoreboard players set #read1 sab.var 0
$execute if data entity @s data.incoming[$(j)][4] store result score #read1 sab.var run data get entity @s data.incoming[$(j)][4]
$execute store result score #read2 sab.var run data get entity @s data.incoming[$(j)][0]
$execute if score #read1 sab.var matches 1 if score #read2 sab.var = #waypoint sab.var run data modify entity @s data.incoming[$(j)][0] set value 0
#=====


#recursion until the end of the list
execute store result storage sa_bots:waypoint j int 1 run scoreboard players get #j sab.var
scoreboard players add #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
$execute if data entity @s data.incoming[$(jplus1)] run function sa_bots:editor/waypoint_delete/remove_id_subroute_recursive with storage sa_bots:waypoint
