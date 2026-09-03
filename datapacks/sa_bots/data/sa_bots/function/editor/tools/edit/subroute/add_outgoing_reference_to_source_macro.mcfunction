#executed by target waypoint

#executed with storage sa_bots:waypoint
#$(i) is the index we should be writing to
#$(waypoint_source_string) is UUID4 of source waypoint
#$(waypoint_target_string) is UUID4 of source waypoint
#"#waypoint_source sab.var" is integer UUID4 of source waypoint


#make sure there's data where we want to write and the destination is expecting a reference
scoreboard players set #read sab.var -1
$execute as b-0-0-0-$(waypoint_source_string) \
    if data entity @s data.outgoing[$(i)] \
    if data entity @s data.outgoing[$(i)][3] \
    store result score #read sab.var run data get entity @s data.outgoing[$(i)][3][0]

#quit out if not
execute unless score #read sab.var matches 0.. run return run scoreboard players set #success_defined_endpoint sab.var -2
#=====


#ok, now add it
$execute as b-0-0-0-$(waypoint_source_string) store result entity @s data.outgoing[$(i)][3][0] int 1 run scoreboard players get #waypoint_target sab.var
$execute as b-0-0-0-$(waypoint_source_string) if data entity @s data.outgoing[$(i)][3][1] run data remove entity @s data.outgoing[$(i)][3][1]
$execute as b-0-0-0-$(waypoint_source_string) run data modify entity @s data.outgoing[$(i)][3] append value "$(waypoint_target_string)"

#now check if the source still has any missing endpoints
$execute as b-0-0-0-$(waypoint_source_string) run function sa_bots:editor/tools/edit/subroute/source_check_if_all_endpoints_valid

#we did it
scoreboard players set #success_defined_endpoint sab.var 1