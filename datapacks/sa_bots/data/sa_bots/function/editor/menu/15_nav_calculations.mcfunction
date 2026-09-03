#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 15


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.nav_calculations",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#calculate all
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.button.calculate_all"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 35"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.calculate_all"}}}]

tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.button.calculate_all_more_info"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 32"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.calculate_all_more_info"}}}]

#show nav channel
execute unless score #show_nav_channel sab.var matches 1.. run tellraw @s ["\n",{translate:"sa_bot.menu.show_nav_channel",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 33"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 34"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{translate:"sa_bot.menu.none"} \
    ]
execute if score #show_nav_channel sab.var matches 1.. run tellraw @s ["\n",{translate:"sa_bot.menu.show_nav_channel",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 33"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 34"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{score:{name:"#show_nav_channel",objective:"sab.var"}} \
    ]

#nav debug info
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:gold,with:[{translate:"sa_bot.menu.nav_debug"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 36"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.nav_debug"}}}]


#back
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:red,with:[{translate:"sa_bot.menu.back"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 1"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.back"}}}]