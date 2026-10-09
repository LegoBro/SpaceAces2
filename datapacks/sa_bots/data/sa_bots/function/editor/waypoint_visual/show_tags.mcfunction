#executed by a bot waypoint Marker


execute if entity @s[tag=wp.requireOnGround] positioned ~ ~1 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.requireOnGround",color:green}'}

execute if entity @s[tag=wp.dontReRouteHere] positioned ~ ~1.1 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.dontReRouteHere",color:green}'}

execute if entity @s[tag=wp.sniperSpot] positioned ~ ~1.2 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.sniperSpot",color:green}'}
execute if entity @s[tag=wp.sniperSpot.blue] positioned ~ ~1.3 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.sniperSpot.blue",color:blue}'}
execute if entity @s[tag=wp.sniperSpot.red] positioned ~ ~1.35 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.sniperSpot.red",color:red}'}

execute if entity @s[tag=wp.turretSpot] positioned ~ ~1.4 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.turretSpot",color:green}'}
execute if entity @s[tag=wp.turretSpot.blue] positioned ~ ~1.5 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.turretSpot.blue",color:blue}'}
execute if entity @s[tag=wp.turretSpot.red] positioned ~ ~1.55 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.turretSpot.red",color:red}'}

execute if entity @s[tag=wp.leadsToTurretSpot] positioned ~ ~1.4 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.leadsToTurretSpot",color:green}'}
execute if entity @s[tag=wp.leadsToTurretSpot.blue] positioned ~ ~1.5 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.leadsToTurretSpot.blue",color:blue}'}
execute if entity @s[tag=wp.leadsToTurretSpot.red] positioned ~ ~1.55 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.leadsToTurretSpot.red",color:red}'}

execute if entity @s[tag=wp.patrolPoint] positioned ~ ~1.6 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.patrolPoint",color:green}'}
execute if entity @s[tag=wp.patrolPoint.blue] positioned ~ ~1.7 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.patrolPoint.blue",color:blue}'}
execute if entity @s[tag=wp.patrolPoint.red] positioned ~ ~1.75 ~ summon text_display run function sa_bots:editor/waypoint_visual/nametag_macro_tiny {text:'{text:"wp.patrolPoint.red",color:red}'}
