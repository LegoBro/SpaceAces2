execute if score @s sab.menuPage matches 0 run function sa_bots:editor/menu/0_top_menu
execute if score @s sab.menuPage matches 1 run function sa_bots:editor/menu/1_modify_menu
execute if score @s sab.menuPage matches 2 run function sa_bots:editor/menu/2_edit_menu
execute if score @s sab.menuPage matches 3 run function sa_bots:editor/menu/3_edit_connections
execute if score @s sab.menuPage matches 4 run function sa_bots:editor/menu/4_edit_tags
#5-10 reserved for more edit menus...

execute if score @s sab.menuPage matches 11 run function sa_bots:editor/menu/11_placement_settings
execute if score @s sab.menuPage matches 12 run function sa_bots:editor/menu/12_spread_menu
execute if score @s sab.menuPage matches 13 run function sa_bots:editor/menu/13_sector_paint_menu
execute if score @s sab.menuPage matches 14 run function sa_bots:editor/menu/14_clear_data_menu
execute if score @s sab.menuPage matches 15 run function sa_bots:editor/menu/15_nav_calculations
execute if score @s sab.menuPage matches 16 run function sa_bots:editor/menu/16_nav_debug