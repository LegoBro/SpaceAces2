#executed by a bot waypoint


#if we match either of the bot's 2 last targeted waypoints, take ourselves out of the running
#this is helpful for preventing bots from getting stuck in an endless loop trying to target an unreachable waypoint


#get id (last part of UUID)
execute store result score #test sab.var run data get entity @s UUID[3]


#last targeted waypoint 1
execute if score #test sab.var = #test1 sab.var run return fail
#=====

#last targeted waypoint 2
execute if score #test sab.var = #test2 sab.var run return fail
#=====


#didn't get filtered? awesome, now check if path is valid
function sa_bots:bot/waypoint_nav/check_if_valid_path_to_waypoint