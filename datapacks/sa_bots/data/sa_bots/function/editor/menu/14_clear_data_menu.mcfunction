#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 14


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.data_clear_tool",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#erase what?
tellraw @s {translate:"sa_bot.menu.erase_what",bold:true}

#buttons
#outgoing
execute if entity @s[tag=!sab.noClearOutgoing] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.button.outgoing"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 26"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.outgoing"}}}, \
    ]
execute if entity @s[tag=sab.noClearOutgoing] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.button.outgoing"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 26"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.outgoing"}}}, \
    ]

#incoming
execute if entity @s[tag=!sab.noClearIncoming] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.button.incoming"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 27"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.incoming"}}}, \
    ]
execute if entity @s[tag=sab.noClearIncoming] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.button.incoming"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 27"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.incoming"}}}, \
    ]

#spread
execute if entity @s[tag=!sab.noClearSpread] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.button.spread"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 28"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.spread"}}}, \
    ]
execute if entity @s[tag=sab.noClearSpread] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.button.spread"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 28"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.spread"}}}, \
    ]

#sector
execute if entity @s[tag=!sab.noClearSector] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.button.sector"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 29"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.sector"}}}, \
    ]
execute if entity @s[tag=sab.noClearSector] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.button.sector"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 29"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.sector"}}}, \
    ]

#tags
execute if entity @s[tag=!sab.noClearTags] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:yellow,with:[{translate:"sa_bot.menu.button.tags"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 30"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.tags"}}}, \
    ]
execute if entity @s[tag=sab.noClearTags] run tellraw @s [ \
    {translate:"sa_bot.generic.button",color:gray,with:[{translate:"sa_bot.menu.button.tags"}],\
    click_event:{action:"run_command",command:"/trigger botPathEdit set 30"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.button.tags"}}}, \
    ]
