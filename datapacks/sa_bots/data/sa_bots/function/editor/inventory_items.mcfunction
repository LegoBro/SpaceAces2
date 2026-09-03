#executed by a player in edit mode


#give us all the stuff

#waypoint selector
clear @s carrot_on_a_stick[custom_data~{wpSelector:1b}]
give @s carrot_on_a_stick[custom_data={wpEditorTool:1b,wpSelector:1b},unbreakable={},item_model="sa_bots:editor/waypoint_selector",custom_name=[{translate:"sa_bot.item.waypoint_selector",color:white,italic:false}]]

#waypoint spawner
clear @s pig_spawn_egg[custom_data~{wpSpawner:1b}]
give @s pig_spawn_egg[custom_data={wpEditorTool:1b,wpSpawner:1b},entity_data={id:"minecraft:vex",NoGravity:0b,NoAI:1b,Tags:["sab.wpSpawn","sab.botWaypointGeneric"]},item_model="sa_bots:editor/waypoint",custom_name=[{translate:"sa_bot.item.bot_waypoint",color:red,italic:false}]]

#waypoint subroute spawner
clear @s pig_spawn_egg[custom_data~{wpSubrouteSpawner:1b}]
give @s pig_spawn_egg[custom_data={wpEditorTool:1b,wpSubrouteSpawner:1b},entity_data={id:"minecraft:vex",NoGravity:0b,NoAI:1b,Tags:["sab.wpSpawn","sab.botSubroute"]},item_model="sa_bots:editor/waypoint_subroute",custom_name=[{translate:"sa_bot.item.bot_waypoint_subroute",color:white,italic:false}]]

#waypoint 1-way connector
clear @s carrot_on_a_stick[custom_data~{wpConnector1Way:1b}]
give @s carrot_on_a_stick[custom_data={wpEditorTool:1b,wpConnector:1b,wpConnector1Way:1b},unbreakable={},item_model="sa_bots:editor/waypoint_connector",custom_name=[{translate:"sa_bot.item.waypoint_one_way_connector",color:red,italic:false}]]

#waypoint 2-way connector
clear @s carrot_on_a_stick[custom_data~{wpConnector2Way:1b}]
give @s carrot_on_a_stick[custom_data={wpEditorTool:1b,wpConnector:1b,wpConnector2Way:1b},unbreakable={},item_model="sa_bots:editor/waypoint_connector_2way",custom_name=[{translate:"sa_bot.item.waypoint_two_way_connector",color:red,italic:false}]]

#waypoint edit
clear @s carrot_on_a_stick[custom_data~{wpEdit:1b}]
give @s carrot_on_a_stick[custom_data={wpEditorTool:1b,wpEdit:1b},unbreakable={},item_model="sa_bots:editor/waypoint_edit",custom_name=[{translate:"sa_bot.item.waypoint_edit",color:red,italic:false}]]

#waypoint spread
clear @s carrot_on_a_stick[custom_data~{wpSpread:1b}]
give @s carrot_on_a_stick[custom_data={wpEditorTool:1b,wpSpread:1b},unbreakable={},item_model="sa_bots:editor/waypoint_spread",custom_name=[{translate:"sa_bot.item.waypoint_spread",color:red,italic:false}]]

#sector painter
clear @s carrot_on_a_stick[custom_data~{wpSectorPainter:1b}]
give @s carrot_on_a_stick[custom_data={wpEditorTool:1b,wpSectorPainter:1b},unbreakable={},item_model="sa_bots:editor/sector_painter",custom_name=[{translate:"sa_bot.item.waypoint_sector_painter",color:red,italic:false}]]

#waypoint clear
clear @s carrot_on_a_stick[custom_data~{wpClear:1b}]
give @s carrot_on_a_stick[custom_data={wpEditorTool:1b,wpClear:1b},unbreakable={},item_model="sa_bots:editor/waypoint_clear",custom_name=[{translate:"sa_bot.item.waypoint_clear",color:red,italic:false}]]
