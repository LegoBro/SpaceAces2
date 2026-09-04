#executed by target waypoint


#remove an outgoing connection
execute if score #signal sab.var matches 1 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.requireOnGround"}
execute if score #signal sab.var matches 2 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.dontReRouteHere"}