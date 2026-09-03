#executed by a bot waypoint


#iterate through incoming connections
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.incoming[0] run function sa_bots:editor/nav/node_check_incoming_unconditional_iterate with storage sa_bots:waypoint


#clean up tags on self (unless another node just told us to calc again next tick)
execute unless score @s sab.navCalcNextTick matches 1 run tag @s remove sab.nav_calc_next_tick