#executed by the second waypoint (aka the "target") we're connecting to
#$(mode) argument is for 1way or 2way mode

#make sure source and target aren't the same!
execute store result score #waypoint_target sab.var run data get entity @s UUID[3]
execute if score #waypoint_target sab.var = #waypoint_source sab.var run return fail
#=====

#grab our data real quick
data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.uuid4

#we need to link up with the first waypoint
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get #waypoint_source sab.var
function sa_uuid4:convert
data modify storage sa_bots:waypoint waypoint_source_string set from storage uuid:out plain
$function sa_bots:editor/tools/connector/pick_second_waypoint_$(mode)_macro with storage sa_bots:waypoint

#feedback
particle explosion ~ ~.25 ~ 0.1 0.1 0.1 0 1 force

#we did it
scoreboard players set #success sab.var -1