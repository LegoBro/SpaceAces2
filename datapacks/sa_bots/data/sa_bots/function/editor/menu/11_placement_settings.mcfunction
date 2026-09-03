#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 11


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.placement_settings",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#auto connect
execute if entity @s[tag=!sab.autoConnectWaypoints] run tellraw @s ["\n",{translate:"sa_bot.menu.auto_connect_to_last_waypoint",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.no"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 11"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.no"}}}, \
    " ",{translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.yes"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 10"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.yes"}}}, \
    ]

execute if entity @s[tag=sab.autoConnectWaypoints] run tellraw @s ["\n",{translate:"sa_bot.menu.auto_connect_to_last_waypoint",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.no"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 11"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.no"}}}, \
    " ",{translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.yes"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 10"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.yes"}}}, \
    ]

#auto spread
execute if entity @s[tag=!sab.autoSpreadWaypoints] run tellraw @s ["\n",{translate:"sa_bot.menu.auto_spread",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.no"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 16"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.no"}}}, \
    " ",{translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.yes"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 15"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.yes"}}}, \
    ]

execute if entity @s[tag=sab.autoSpreadWaypoints] run tellraw @s ["\n",{translate:"sa_bot.menu.auto_spread",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.no"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 16"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.no"}}}, \
    " ",{translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.yes"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 15"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.yes"}}}, \
    ]

#auto assign sector
execute unless entity @s[scores={sab.autoAssignSector=1..}] run tellraw @s ["\n",{translate:"sa_bot.menu.auto_assign_sector",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 13"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 14"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{translate:"sa_bot.menu.none"}, \
    ]
execute if entity @s[scores={sab.autoAssignSector=1..}] run tellraw @s ["\n",{translate:"sa_bot.menu.auto_assign_sector",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 13"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 14"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{score:{name:"@s",objective:"sab.autoAssignSector"}}, \
    ]


#back
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:red,with:[{translate:"sa_bot.menu.back"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 1"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.back"}}}]