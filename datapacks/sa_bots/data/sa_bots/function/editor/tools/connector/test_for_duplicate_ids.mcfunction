#"#compare sab.var" must be supplied as an argument

#references to other waypoints are formatted like [12,"0000000c",...]
#the integer id is redundant, but for the purpose of searching for matches in a list we have to use it.

#quit out with a failure if we find a match
$execute store result score #read1 sab.var run data get entity @s data.$(list)[$(i)][0]
execute if score #read1 sab.var = #compare sab.var run return run scoreboard players set #duplicate_found sab.var 1
#=====

#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.$(list)[$(iplus1)] run function sa_bots:editor/tools/connector/test_for_duplicate_ids with storage sa_bots:waypoint