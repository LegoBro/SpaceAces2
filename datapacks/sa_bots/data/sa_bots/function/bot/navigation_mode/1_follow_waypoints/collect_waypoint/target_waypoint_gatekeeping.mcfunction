#executed by a bot waypoint


#require bot to be grounded?
execute if entity @s[tag=wp.requireOnGround] unless score #on_ground sab.var matches 1 run return fail
#=====

#final check: LOS must exist to waypoint (#found_target sab.var will be 1 if true)
function sa_bots:bot/waypoint_nav/check_los_to_waypoint