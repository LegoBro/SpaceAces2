#"waypoint_x2 sab.var" is what we want to find the approximate sqrt of

execute if score #waypoint_x2 sab.var matches ..100 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/1_10
execute if score #waypoint_x2 sab.var matches 101..400 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/11_20
execute if score #waypoint_x2 sab.var matches 401..900 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/21_30
execute if score #waypoint_x2 sab.var matches 901..1600 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/31_40
execute if score #waypoint_x2 sab.var matches 1601..2500 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/41_50
execute if score #waypoint_x2 sab.var matches 2501..3600 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/51_60
execute if score #waypoint_x2 sab.var matches 3601..4900 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/61_70
execute if score #waypoint_x2 sab.var matches 4901..6400 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/71_80
execute if score #waypoint_x2 sab.var matches 6401..8100 run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/81_90
execute if score #waypoint_x2 sab.var matches 8101.. run return run function sa_bots:editor/waypoint_connection_length/dumb_sqrt/91_