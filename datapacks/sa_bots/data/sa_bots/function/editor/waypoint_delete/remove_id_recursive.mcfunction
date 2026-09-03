#executed by target waypoint
#executed with storage sa_bots:waypoint
#"#waypoint sab.var" is the id we're looking to remove

#this function loops through all elements of $(list_target) to try and remove the element with the matching id


#quit out and remove element when we find a match
#this assumes that the list has no duplicates to begin with! better keep that data clean, son
$execute store result score #read1 sab.var run data get entity @s data.$(list_target)[$(j)][0]
$execute if score #read1 sab.var = #waypoint sab.var run return run data remove entity @s data.$(list_target)[$(j)]
#=====


#recursion until the end of the list
execute store result storage sa_bots:waypoint j int 1 run scoreboard players get #j sab.var
scoreboard players add #j sab.var 1
execute store result storage sa_bots:waypoint jplus1 int 1 run scoreboard players get #j sab.var
$execute if data entity @s data.$(list_target)[$(jplus1)] run function sa_bots:editor/waypoint_delete/remove_id_recursive with storage sa_bots:waypoint