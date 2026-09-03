#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 12


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.waypoint_spread",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#look up data on the selected node
tag @s add sab.tellMe
execute if score @s sab.waypointSpreadFocus matches 1.. run function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointSpreadFocus",command:"function sa_bots:editor/menu/spread/node_return_spread_data",context:"as"}
tag @s remove sab.tellMe

#select nearest
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.maximize_spread"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 24"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.maximize_spread"}}}]


tellraw @s ["\n",{translate:"sa_bot.menu.use_cursor_to_set_spread",color:gray}]