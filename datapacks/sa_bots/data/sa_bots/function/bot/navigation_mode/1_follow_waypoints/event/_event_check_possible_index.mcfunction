#executed by a bot

#score "#valid_event sab.var" will be set to 1 if we can do the event


execute if score #event sab.var matches 1 run return run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/1_sprint_jump_at_ledge/evaluate
#...