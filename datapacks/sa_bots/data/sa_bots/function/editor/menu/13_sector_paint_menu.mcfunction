#executed by player

#remember what page we're on
scoreboard players set @s sab.menuPage 13


#heading
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:"==\\/==",color:red,bold:true}," ",{translate:"sa_bot.heading.sector_painter",color:red,bold:true}," ",{text:"==\\/==",color:red,bold:true}]


#assign sector
execute unless entity @s[scores={sab.assignSector=1..}] run tellraw @s ["\n",{translate:"sa_bot.menu.assign_sector",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 22"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 23"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{translate:"sa_bot.menu.none"} \
    ]
execute if entity @s[scores={sab.assignSector=1..}] run tellraw @s ["\n",{translate:"sa_bot.menu.assign_sector",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 22"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 23"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{score:{name:"@s",objective:"sab.assignSector"}} \
    ]

#find nearest unassigned
tellraw @s ["\n",{translate:"sa_bot.generic.button",color:white,with:[{translate:"sa_bot.menu.find_nearest_unset"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 25"},hover_event:{action:"show_text",value:{translate:"sa_bot.menu.find_nearest_unset"}}}]

#show number of unassigned waypoints
scoreboard players set #count sab.var 0
execute as @e[type=marker,tag=sab.botWaypointGeneric] unless data entity @s data.sector run scoreboard players add #count sab.var 1
tellraw @s ["\n",{translate:"sa_bot.menu.count_unassigned_waypoints",color:gray,italic:true,with:[{score:{name:"#count",objective:"sab.var"}}]}]