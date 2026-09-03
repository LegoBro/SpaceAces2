#called with storage sa_bots:waypoint

#do we exist?
$execute as b-0-0-0-$(waypoint_target_string) run scoreboard players set #test sab.var 1

#ok, try to run the function
$execute as b-0-0-0-$(waypoint_target_string) at @s run $(command)