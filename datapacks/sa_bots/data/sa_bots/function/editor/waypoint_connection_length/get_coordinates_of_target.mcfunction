#executed by source waypoint

#executed with storage sa_bots:waypoint
#$(waypoint_target_string) is UUID4 of target waypoint

$execute as b-0-0-0-$(waypoint_target_string) run function sa_bots:editor/waypoint_connection_length/get_coordinates_of_target_go with storage sa_bots:waypoint