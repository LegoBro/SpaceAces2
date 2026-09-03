#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 0


#heading
execute unless score #no_text_push sab.var matches 1.. run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute unless score #no_text_push sab.var matches 1.. run tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.bot_waypoint_editor",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]
scoreboard players set #no_text_push sab.var 0


#get nearest data
tellraw @s [{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.get_data_of_nearest"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 9"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.get_data_of_nearest"}}}, \
    "\n"]

#selection
#show number selected
execute store result score #count sab.var run execute if entity @e[type=marker,scores={sab.selected=0..}]
tellraw @s {translate:"sa_bot.menu.number_selected",color:gray,italic:true,with:[{score:{name:"#count",objective:"sab.var"}}]}
#modify selected
tellraw @s [{translate:"sa_bot.generic.button",color:gold,with:[{translate:"sa_bot.menu.modify_selected"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 3"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.modify_selected"}}}]

#placement settings
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:gold,with:[{translate:"sa_bot.menu.placement_settings"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 12"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.placement_settings"}}}]

#nav calculations
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:gold,with:[{translate:"sa_bot.menu.nav_calculation"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 31"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.nav_calculation"}}}]


#exit
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:red,with:[{translate:"sa_bot.menu.exit"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 2"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.exit"}}}]