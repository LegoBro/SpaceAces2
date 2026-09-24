#executed by a bot

#score "#valid_event sab.var" will be set to 1 if we can do the event


execute if score #event sab.var matches 1 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/1_sprint_jump_at_ledge/evaluate
execute if score #event sab.var matches 2 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/2_sprint_jump_at_ledge_med/evaluate
execute if score #event sab.var matches 3 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/3_sprint_jump_at_ledge_fast/evaluate
execute if score #event sab.var matches 4 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/4_2_block_high_gap/evaluate
#...
execute if score #event sab.var matches 8 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/2_sprint_jump_at_ledge_med/evaluate
execute if score #event sab.var matches 9 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/3_sprint_jump_at_ledge_fast/evaluate
#...