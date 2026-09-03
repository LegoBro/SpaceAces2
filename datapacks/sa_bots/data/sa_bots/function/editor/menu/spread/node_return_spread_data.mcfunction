#executed by target waypoint
#we will report back to players with "tag=sab.tellMe"


#node name
data modify storage sa_bots:generic string set from entity @s data.uuid4
tellraw @a[tag=sab.tellMe] [{translate:"sa_bot.menu.focused_on_waypoint",color:white,with:[\
    {nbt:"string",storage:"sa_bots:generic",interpret:true,color:red} \
    ]}]

#make sure data exists
execute unless data entity @s data.spread[0] run data modify entity @s data.spread set value [0,0]

#get signals from the player
execute if entity @a[tag=sab.tellMe,tag=sab.signal_1] run function sa_bots:editor/menu/spread/modify_spread \
    {operation:"add",index:"0"}
execute if entity @a[tag=sab.tellMe,tag=sab.signal_2] run function sa_bots:editor/menu/spread/modify_spread \
    {operation:"remove",index:"0"}
execute if entity @a[tag=sab.tellMe,tag=sab.signal_3] run function sa_bots:editor/menu/spread/modify_spread \
    {operation:"add",index:"1"}
execute if entity @a[tag=sab.tellMe,tag=sab.signal_4] run function sa_bots:editor/menu/spread/modify_spread \
    {operation:"remove",index:"1"}

#spread x
execute store result score #test sab.var run data get entity @s data.spread[0]
tellraw @a[tag=sab.tellMe] ["\n",{translate:"sa_bot.menu.x_spread",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 18"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 19"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{score:{name:"#test",objective:"sab.var"}}, \
    ]

#spread z
execute store result score #test sab.var run data get entity @s data.spread[1]
tellraw @a[tag=sab.tellMe] ["\n",{translate:"sa_bot.menu.z_spread",bold:true}, \
    "  ",{translate:"sa_bot.generic.button",color:green,with:[{text:"+"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 20"},hover_event:{action:"show_text",value:{text:"+",color:green}}}, \
    " ",{translate:"sa_bot.generic.button",color:red,with:[{text:"-"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 21"},hover_event:{action:"show_text",value:{text:"-",color:red}}}, \
    "  ",{score:{name:"#test",objective:"sab.var"}}, \
    ]
