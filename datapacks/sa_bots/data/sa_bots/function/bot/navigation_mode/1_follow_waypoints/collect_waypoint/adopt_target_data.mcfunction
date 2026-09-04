#executed by a bot entity


#adopt data and scores from recently decided-upon target
data remove entity @s data.move_targets[0]
data modify entity @s data.move_targets prepend from storage sa_bots:generic target
function sa_bots:bot/waypoint_nav/update_target_scores