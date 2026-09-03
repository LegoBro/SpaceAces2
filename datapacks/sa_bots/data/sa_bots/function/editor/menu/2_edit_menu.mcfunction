#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 2


#heading
execute unless score #no_text_push sab.var matches 1 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute unless score #no_text_push sab.var matches 1 run \
    tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.edit_waypoint",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]
scoreboard players set #no_text_push sab.var 0

#look up basic data on the selected node
tag @s add sab.tellMe
execute if score @s sab.waypointEditFocus matches 1.. run function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointEditFocus",command:"function sa_bots:editor/menu/edit/node_return_data_basic",context:"as"}
tag @s remove sab.tellMe

#view data
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.view_data"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 41"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.view_data"}}}]

#list sub-menus
#connections, tags
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:gold,with:[{translate:"sa_bot.menu.connections"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 7"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.connections"}}}, \
    "  ",{translate:"sa_bot.generic.button",color:gold,with:[{translate:"sa_bot.menu.behavior_tags"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 8"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.behavior_tags"}}} \
    ]


#notify user if they tried and failed to define an endpoint
function sa_bots:editor/tools/edit/subroute/endpoint_defined_status