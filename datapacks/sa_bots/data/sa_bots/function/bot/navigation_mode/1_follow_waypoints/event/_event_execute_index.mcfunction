#executed by a bot


#do the thing

#1..3 -- jump at next ledge
execute if score #chosen_event sab.var matches 1..3 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/1_sprint_jump_at_ledge/execute
#4 -- 2-block high gap
execute if score #chosen_event sab.var matches 4 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/4_2_block_high_gap/execute
#...
#8 -- no action needed
#9 -- no action needed
#10 -- no action needed