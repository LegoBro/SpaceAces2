#executed by bot
#executed at arbitrary position

#first, raycast down until we hit the ground
scoreboard players set #recursions sab.var 100
function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_prep_recursive