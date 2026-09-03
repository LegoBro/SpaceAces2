#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 15


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.nav_debug",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#show bot destination
execute unless score #debug_show_bot_destination sab.var matches 1 run tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{text:"X",color:red}],click_event:{action:"run_command",command:"/trigger botPathEdit set 37"}}," ",{translate:"sa_bot.menu.debug.show_bot_destination",color:white,bold:true}]
execute if score #debug_show_bot_destination sab.var matches 1 run tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{text:"O",color:green}],click_event:{action:"run_command",command:"/trigger botPathEdit set 37"}}," ",{translate:"sa_bot.menu.debug.show_bot_destination",color:white,bold:true}]

#adopt nav channel of nearest bot
execute unless score #debug_adopt_nav_channel sab.var matches 1 run tellraw @s [{translate:"sa_bot.generic.button",color:white,with:[{text:"X",color:red}],click_event:{action:"run_command",command:"/trigger botPathEdit set 40"}}," ",{translate:"sa_bot.menu.debug.adopt_nav_channel_of_nearest_bot",color:white,bold:true}]
execute if score #debug_adopt_nav_channel sab.var matches 1 run tellraw @s [{translate:"sa_bot.generic.button",color:white,with:[{text:"O",color:green}],click_event:{action:"run_command",command:"/trigger botPathEdit set 40"}}," ",{translate:"sa_bot.menu.debug.adopt_nav_channel_of_nearest_bot",color:white,bold:true}]

#show nav cache
execute unless score #debug_show_nav_cache sab.var matches 1 run tellraw @s [{translate:"sa_bot.generic.button",color:white,with:[{text:"X",color:red}],click_event:{action:"run_command",command:"/trigger botPathEdit set 38"}}," ",{translate:"sa_bot.menu.debug.show_nav_cache",color:white,bold:true}]
execute if score #debug_show_nav_cache sab.var matches 1 run tellraw @s [{translate:"sa_bot.generic.button",color:white,with:[{text:"O",color:green}],click_event:{action:"run_command",command:"/trigger botPathEdit set 38"}}," ",{translate:"sa_bot.menu.debug.show_nav_cache",color:white,bold:true}]

#show junction decisions
execute unless score #debug_show_junction_decisions sab.var matches 1 run tellraw @s [{translate:"sa_bot.generic.button",color:white,with:[{text:"X",color:red}],click_event:{action:"run_command",command:"/trigger botPathEdit set 39"}}," ",{translate:"sa_bot.menu.debug.show_junction_decisions",color:white,bold:true}]
execute if score #debug_show_junction_decisions sab.var matches 1 run tellraw @s [{translate:"sa_bot.generic.button",color:white,with:[{text:"O",color:green}],click_event:{action:"run_command",command:"/trigger botPathEdit set 39"}}," ",{translate:"sa_bot.menu.debug.show_junction_decisions",color:white,bold:true}]


#back
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:red,with:[{translate:"sa_bot.menu.back"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 31"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.back"}}}]