#executed by source waypoint
#executed with storage sa_bots:waypoint

#access the connection data at index i
$data modify storage sa_bots:waypoint connection_data set from entity @s data.outgoing[$(i)]

#show data, plus clickable buttons
#i'm using macros to encode the index of this connection into the /trigger command, hence i_5digit
$tellraw @a[tag=sab.tellMe] [ \
    {nbt:"i",storage:"sa_bots:waypoint",interpret:false},"--",{nbt:"connection_data[1]",storage:"sa_bots:waypoint",interpret:true},"  ", \
    {translate:"sa_bot.generic.button",with:[{translate:"sa_bot.menu.delete_short"}],color:"#A00000", \
    click_event:{action:"run_command",command:"/trigger botPathEdit set 1$(i_5digit)"}, \
    hover_event:{action:"show_text",value:{translate:"sa_bot.menu.delete"}}}, \
    "  ", \
    {translate:"sa_bot.menu.event",color:white},"  ", \
    {translate:"sa_bot.generic.button",with:[{text:"<"}],color:"yellow", \
    click_event:{action:"run_command",command:"/trigger botPathEdit set 3$(i_5digit)"}, \
    hover_event:{action:"show_text",value:{translate:"sa_bot.menu.previous"}}}, \
    " ", \
    {translate:"sa_bot.generic.button",with:[{text:">"}],color:"yellow", \
    click_event:{action:"run_command",command:"/trigger botPathEdit set 2$(i_5digit)"}, \
    hover_event:{action:"show_text",value:{translate:"sa_bot.menu.next"}}}, \
    "  ", \
    ]
#show event if we have one
scoreboard players set #read sab.var 0
$execute if data entity @s data.outgoing[$(i)][2][0] store result score #read sab.var run data get entity @s data.outgoing[$(i)][2][0]
execute if score #read sab.var matches 1.. store result storage sa_bots:waypoint_info event_name_index int 1 run scoreboard players get #read sab.var
execute if score #read sab.var matches 1.. run function sa_bots:editor/menu/edit/event_show_name with storage sa_bots:waypoint_info

#show endpoint for sub-route
scoreboard players set #read sab.var -1
$execute if data entity @s data.outgoing[$(i)][3][0] store result score #read sab.var run data get entity @s data.outgoing[$(i)][3][0]
execute if score #read sab.var matches 0 run data modify storage sa_bots:waypoint read set value "UNDEFINED"
$execute if score #read sab.var matches 1.. run data modify storage sa_bots:waypoint read set from entity @s data.outgoing[$(i)][3][1]
$execute if score #read sab.var matches 0.. run tellraw @a[tag=sab.tellMe] ["   ", \
    {translate:"sa_bot.menu.subroute_endpoint",color:white},"  ", \
    {translate:"sa_bot.generic.button",with:[{translate:"sa_bot.menu.set"}],color:"yellow", \
    click_event:{action:"run_command",command:"/trigger botPathEdit set 4$(i_5digit)"}, \
    hover_event:{action:"show_text",value:{translate:"sa_bot.menu.set"}}}, \
    "  ", \
    {nbt:"read",storage:"sa_bots:waypoint",color:red}]

#recursion until the end of the list
execute store result storage sa_bots:waypoint i int 1 run scoreboard players get #i sab.var
scoreboard players add #i sab.var 1
execute store result storage sa_bots:waypoint i_5digit int 1 run scoreboard players get #i_5digit sab.var
scoreboard players add #i_5digit sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
$execute if data entity @s data.outgoing[$(iplus1)] run function sa_bots:editor/menu/edit/interate_through_connections with storage sa_bots:waypoint