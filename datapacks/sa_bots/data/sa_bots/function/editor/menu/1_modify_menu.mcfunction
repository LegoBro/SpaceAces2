#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 1


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.modify_selected",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#show number selected
execute store result score #count sab.var run execute if entity @e[type=marker,scores={sab.selected=0..}]
tellraw @s {translate:"sa_bot.menu.number_selected",color:gray,italic:true,with:[{score:{name:"#count",objective:"sab.var"}}]}

#nudge
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:aqua,with:[{translate:"sa_bot.menu.nudge"}],click_event:{action:"suggest_command",command:"/execute as @e[type=marker,scores={sab.selected=0..}] at @s run tp @s "},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.nudge"}}}]

#score, data, tag
tellraw @s [{translate:"sa_bot.generic.button",color:aqua,with:[{translate:"sa_bot.menu.score"}],click_event:{action:"suggest_command",command:"/execute as @e[type=marker,scores={sab.selected=0..}] run scoreboard players set @s "},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.score"}}}, \
    "  ",{translate:"sa_bot.generic.button",color:aqua,with:[{translate:"sa_bot.menu.tag"}],click_event:{action:"suggest_command",command:"/execute as @e[type=marker,scores={sab.selected=0..}] run tag @s "},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.tag"}}}, \
    "  ",{translate:"sa_bot.generic.button",color:aqua,with:[{translate:"sa_bot.menu.data"}],click_event:{action:"suggest_command",command:"/execute as @e[type=marker,scores={sab.selected=0..}] run data modify entity @s "},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.data"}}} \
    ]

#select nearest
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.select_nearest"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 17"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.select_nearest"}}}]

#cancel, erase
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.cancel_selection"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 5"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.cancel_selection"}}}, \
    "  ",{translate:"sa_bot.generic.button",color:"#A00000",with:[{translate:"sa_bot.menu.erase_selected"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 4"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.erase_selected"}}} \
    ]


#back
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:red,with:[{translate:"sa_bot.menu.back"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 1"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.back"}}}]