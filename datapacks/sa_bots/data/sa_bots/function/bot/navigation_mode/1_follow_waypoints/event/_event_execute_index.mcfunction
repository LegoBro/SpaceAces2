#executed by a bot


#do the thing

#1..3 -- jump at next ledge
execute if score #chosen_event sab.var matches 1..3 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/1_sprint_jump_at_ledge/execute
#4 -- 2-block high gap
execute if score #chosen_event sab.var matches 4 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/4_2_block_high_gap/execute
#5 -- vertical move 6 blocks
execute if score #chosen_event sab.var matches 5 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/5_require_vertical_move_6_blocks/execute
#6 -- vertical move 10 blocks
execute if score #chosen_event sab.var matches 5 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/6_require_vertical_move_10_blocks/execute
#7 -- horizontal move
execute if score #chosen_event sab.var matches 5 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/7_require_horizontal_move/execute
#8 -- no action needed
#9 -- no action needed
#10 -- no action needed