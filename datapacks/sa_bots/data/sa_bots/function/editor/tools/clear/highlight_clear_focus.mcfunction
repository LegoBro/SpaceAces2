tag @s add sab.tellMe
function sa_bots:editor/utility/run_command_waypoint_short_macro {player_score:"@s sab.waypointEditFocus",command:"particle falling_dust{block_state:{id:purple_concrete}} ~ ~.25 ~ 0.2 0.2 0.2 0 1 force @a[tag=sab.tellMe]",context:"on"}
tag @s remove sab.tellMe