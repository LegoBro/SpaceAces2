#executed by target waypoint


#toggle corresponding tag
execute if score #signal sab.var matches 1 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.requireOnGround"}
execute if score #signal sab.var matches 2 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.dontReRouteHere"}
execute if score #signal sab.var matches 3 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.sniperSpot"}
execute if score #signal sab.var matches 4 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.sniperSpot.blue"}
execute if score #signal sab.var matches 5 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.sniperSpot.red"}
execute if score #signal sab.var matches 6 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.turretSpot"}
execute if score #signal sab.var matches 7 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.turretSpot.blue"}
execute if score #signal sab.var matches 8 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.turretSpot.red"}
execute if score #signal sab.var matches 9 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.partolPoint"}
execute if score #signal sab.var matches 10 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.partolPoint.blue"}
execute if score #signal sab.var matches 11 run return run function sa_bots:editor/menu/edit/node_toggle_tag {tag:"wp.partolPoint.red"}