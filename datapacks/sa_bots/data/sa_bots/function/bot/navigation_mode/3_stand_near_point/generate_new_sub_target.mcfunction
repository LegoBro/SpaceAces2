#executed by a bot
#executed with data.move_targets[0]


#move execution location to the point we're trying to stand near
$execute positioned 0.0 0.0 0.0 positioned ~$(x) ~$(y) ~$(z) if loaded ~ ~ ~ run function sa_bots:bot/navigation_mode/3_stand_near_point/generate_new_sub_target_go