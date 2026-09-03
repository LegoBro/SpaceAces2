#executed by target waypoint

#executed with storage sa_bots:waypoint
#$(waypoint_source_string) is UUID4 of source waypoint
#$(waypoint_target_string) is UUID4 of target waypoint
#"#waypoint_source sab.var" is integer UUID4 of source waypoint
#"#waypoint_target sab.var" is integer UUID4 of target


#keep track of which waypoints are sab.botSubroute
execute store result score #subroute_target sab.var if entity @s[tag=sab.botSubroute]


#----------
#target: add to target's incoming waypoint list

#avoid duplicates
scoreboard players set #duplicate_found sab.var 0
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
scoreboard players operation #compare sab.var = #waypoint_source sab.var
data modify storage sa_bots:waypoint list set value "incoming"
execute if data entity @s data.incoming[0] run function sa_bots:editor/tools/connector/test_for_duplicate_ids with storage sa_bots:waypoint

#successful add to incoming list on target
$execute if score #duplicate_found sab.var matches 0 run data modify entity @s data.incoming prepend value [0,"$(waypoint_source_string)",0,0,0]
execute if score #duplicate_found sab.var matches 0 store result entity @s data.incoming[0][0] int 1 run scoreboard players get #waypoint_source sab.var
#----------


#----------
#source: add to source's outgoing waypoint list

#avoid duplicates
scoreboard players set #duplicate_found sab.var 0
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
scoreboard players operation #compare sab.var = #waypoint_target sab.var
data modify storage sa_bots:waypoint list set value "outgoing"
$execute as b-0-0-0-$(waypoint_source_string) if data entity @s data.outgoing[0] run function sa_bots:editor/tools/connector/test_for_duplicate_ids with storage sa_bots:waypoint

#successful add to outgoing list on source
$execute if score #duplicate_found sab.var matches 0 as b-0-0-0-$(waypoint_source_string) run data modify entity @s data.outgoing prepend value [0,"$(waypoint_target_string)",[0],[-1]]
$execute if score #duplicate_found sab.var matches 0 as b-0-0-0-$(waypoint_source_string) store result entity @s data.outgoing[0][0] int 1 run scoreboard players get #waypoint_target sab.var
#if target is a subroute, set subroute reference to 0 (meaning we need to define this, later)
$execute if score #duplicate_found sab.var matches 0 if score #subroute_target sab.var matches 1 as b-0-0-0-$(waypoint_source_string) run data modify entity @s[tag=!sab.botSubroute] data.outgoing[0][3][0] set value 0
$execute if score #duplicate_found sab.var matches 0 if score #subroute_target sab.var matches 1 as b-0-0-0-$(waypoint_source_string) run tag @s[tag=!sab.botSubroute] add sab.hasUndefinedEndpoints
#----------


#tell player if subroutes are undefined
$execute as b-0-0-0-$(waypoint_source_string) if entity @s[tag=sab.hasUndefinedEndpoints] run return run tellraw @a[tag=sab.botPathEdit] ["\n",{translate:"sa_bot.prompt.set_endpoint_for_sub_route",color:white,italic:true}]