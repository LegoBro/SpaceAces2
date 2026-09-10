#executed by a waypoint that is having its event modified


#read what the event is
scoreboard players set #read sab.var 0
$execute if data entity @s data.outgoing[$(t)][2][0] store result score #read sab.var run data get entity @s data.outgoing[$(t)][2][0]

#next event, please
scoreboard players add #read sab.var 1
execute if score #read sab.var > #NUMBER_OF_EVENTS sab.var run scoreboard players set #read sab.var 0

#write it again
$execute unless data entity @s data.outgoing[$(t)][2] run data modify entity @s data.outgoing[$(t)] append value [0]
$execute store result entity @s data.outgoing[$(t)][2][0] int 1 run scoreboard players get #read sab.var


#update conditional flag on the target's "incoming" list depending on whether the new event is considered conditional
execute store result score #conditional sab.var run function sa_bots:setup/editor/define_conditional_events
execute store result score #waypoint_source sab.var run data get entity @s UUID[3]
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.outgoing[$(t)][1]
data modify storage sa_bots:waypoint command set value "execute if data entity @s data.incoming[0] run function sa_bots:editor/menu/edit/update_conditional_on_target_iterate with storage sa_bots:waypoint"
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
function sa_bots:editor/utility/run_command_as_waypoint_macro with storage sa_bots:waypoint
#also do for sub-route endpoints
$execute unless data entity @s data.outgoing[$(t)][3][1] run return 0
#=====
$data modify storage sa_bots:waypoint waypoint_target_string set from entity @s data.outgoing[$(t)][3][1]
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
function sa_bots:editor/utility/run_command_as_waypoint_macro with storage sa_bots:waypoint