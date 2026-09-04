execute if score @s botPathEdit matches 1 run function sa_bots:editor/menu/0_top_menu
execute if score @s botPathEdit matches 2 run function sa_bots:editor/exit_editor
execute if score @s botPathEdit matches 3 run function sa_bots:editor/menu/1_modify_menu
execute if score @s botPathEdit matches 4 run function sa_bots:editor/action/erase_selected
execute if score @s botPathEdit matches 5 run function sa_bots:editor/action/cancel_selection
execute if score @s botPathEdit matches 6 run function sa_bots:editor/menu/2_edit_menu
execute if score @s botPathEdit matches 7 run function sa_bots:editor/menu/3_edit_connections
execute if score @s botPathEdit matches 8 run function sa_bots:editor/menu/4_edit_tags
execute if score @s botPathEdit matches 9 run function sa_bots:editor/action/get_data_of_nearest_waypoint
execute if score @s botPathEdit matches 10 run function sa_bots:editor/action/modify_tag {operation:"add",tag:"sab.autoConnectWaypoints"}
execute if score @s botPathEdit matches 11 run function sa_bots:editor/action/modify_tag {operation:"remove",tag:"sab.autoConnectWaypoints"}
execute if score @s botPathEdit matches 12 run function sa_bots:editor/menu/11_placement_settings
execute if score @s botPathEdit matches 13 run function sa_bots:editor/action/modify_sector_assign {operation:"add"}
execute if score @s botPathEdit matches 14 run function sa_bots:editor/action/modify_sector_assign {operation:"remove"}
execute if score @s botPathEdit matches 15 run function sa_bots:editor/action/modify_tag {operation:"add",tag:"sab.autoSpreadWaypoints"}
execute if score @s botPathEdit matches 16 run function sa_bots:editor/action/modify_tag {operation:"remove",tag:"sab.autoSpreadWaypoints"}
execute if score @s botPathEdit matches 17 run function sa_bots:editor/action/select_nearest
execute if score @s botPathEdit matches 18 run function sa_bots:editor/action/send_signal {tag:"sab.signal_1",menu:"12_spread_menu"}
execute if score @s botPathEdit matches 19 run function sa_bots:editor/action/send_signal {tag:"sab.signal_2",menu:"12_spread_menu"}
execute if score @s botPathEdit matches 20 run function sa_bots:editor/action/send_signal {tag:"sab.signal_3",menu:"12_spread_menu"}
execute if score @s botPathEdit matches 21 run function sa_bots:editor/action/send_signal {tag:"sab.signal_4",menu:"12_spread_menu"}
execute if score @s botPathEdit matches 22 run function sa_bots:editor/action/modify_sector_paint {operation:"add"}
execute if score @s botPathEdit matches 23 run function sa_bots:editor/action/modify_sector_paint {operation:"remove"}
execute if score @s botPathEdit matches 24 run function sa_bots:editor/action/maximize_spread
execute if score @s botPathEdit matches 25 run function sa_bots:editor/action/find_nearest_unassigned_sector
execute if score @s botPathEdit matches 26 run function sa_bots:editor/action/toggle_tag {tag:"sab.noClearOutgoing"}
execute if score @s botPathEdit matches 27 run function sa_bots:editor/action/toggle_tag {tag:"sab.noClearIncoming"}
execute if score @s botPathEdit matches 28 run function sa_bots:editor/action/toggle_tag {tag:"sab.noClearSpread"}
execute if score @s botPathEdit matches 29 run function sa_bots:editor/action/toggle_tag {tag:"sab.noClearSector"}
execute if score @s botPathEdit matches 30 run function sa_bots:editor/action/toggle_tag {tag:"sab.noClearTags"}
execute if score @s botPathEdit matches 31 run function sa_bots:editor/menu/15_nav_calculations
execute if score @s botPathEdit matches 32 run function sa_bots:editor/nav/_start_all_nav_calc {show_output:2}
execute if score @s botPathEdit matches 33 run function sa_bots:editor/action/modify_show_nav_channel {operation:"add"}
execute if score @s botPathEdit matches 34 run function sa_bots:editor/action/modify_show_nav_channel {operation:"remove"}
execute if score @s botPathEdit matches 35 run function sa_bots:editor/nav/_start_all_nav_calc {show_output:1}
execute if score @s botPathEdit matches 36 run function sa_bots:editor/menu/16_nav_debug
execute if score @s botPathEdit matches 37 run function sa_bots:editor/action/toggle_score {name:"#debug_show_bot_destination",menu:"16_nav_debug"}
execute if score @s botPathEdit matches 38 run function sa_bots:editor/action/toggle_score {name:"#debug_show_nav_cache",menu:"16_nav_debug"}
execute if score @s botPathEdit matches 39 run function sa_bots:editor/action/toggle_score {name:"#debug_show_junction_decisions",menu:"16_nav_debug"}
execute if score @s botPathEdit matches 40 run function sa_bots:editor/action/toggle_score {name:"#debug_adopt_nav_channel",menu:"16_nav_debug"}
execute if score @s botPathEdit matches 41 run function sa_bots:editor/action/view_data_of_edit_focus
execute if score @s botPathEdit matches 42 run function sa_bots:editor/action/toggle_waypoint_tag {index:1}
execute if score @s botPathEdit matches 43 run function sa_bots:editor/action/toggle_waypoint_tag {index:2}
#...