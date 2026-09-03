#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 4


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.edit_waypoint",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#look up basic data on the selected node
tag @s add sab.tellMe
execute if score @s sab.waypointEditFocus matches 1.. run function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointEditFocus",command:"function sa_bots:editor/menu/edit/node_return_data_basic",context:"as"}
tag @s remove sab.tellMe

#...


#notify user if they tried and failed to define an endpoint
function sa_bots:editor/tools/edit/subroute/endpoint_defined_status

#back
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:red,with:[{translate:"sa_bot.menu.back"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 6"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.back"}}}]