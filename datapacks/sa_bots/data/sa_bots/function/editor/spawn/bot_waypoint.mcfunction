#feedback
particle instant_effect ~ ~.25 ~ 0 0 0 0.2 5 force


#get a unique uuid4
function sa_bots:editor/spawn/data/generate_uuid4

#spawn the thing
function sa_bots:editor/spawn/bot_waypoint_macro with storage sa_bots:waypoint

#send data to waypoint
execute as @a[tag=sab.botPathEdit,limit=1,sort=nearest] run function sa_bots:editor/spawn/data/player_send_data
execute as @e[type=marker,tag=sab.setWpData,distance=..1] at @s run function sa_bots:editor/spawn/data/bot_waypoint_apply_data