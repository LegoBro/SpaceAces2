#executed by target waypoint
#we will report back to players with "tag=sab.tellMe"


#node name
data modify storage sa_bots:generic string set from entity @s data.uuid4
tellraw @a[tag=sab.tellMe] [{translate:"sa_bot.menu.focused_on_waypoint",color:white,with:[\
    {nbt:"string",storage:"sa_bots:generic",interpret:true,color:red} \
    ]}]

#require onground
data modify storage sa_bots:waypoint_info text_builder set value []
data modify storage sa_bots:waypoint_info text_builder append value \
    ["\n",{translate:"sa_bot.generic.button",color:gray,with:[{text:"wp.requireOnGround"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 42"},hover_event:{action:"show_text",value:{text:"wp.requireOnGround"}}}]
execute if entity @s[tag=wp.requireOnGround] run data modify storage sa_bots:waypoint_info text_builder[0][1].color set value "yellow"
#don't reroute
data modify storage sa_bots:waypoint_info text_builder append value \
    ["  ",{translate:"sa_bot.generic.button",color:gray,with:[{text:"wp.dontReRouteHere"}],click_event:{action:"run_command",command:"/trigger botPathEdit set 43"},hover_event:{action:"show_text",value:{text:"wp.dontReRouteHere"}}}]
execute if entity @s[tag=wp.dontReRouteHere] run data modify storage sa_bots:waypoint_info text_builder[1][1].color set value "yellow"

#print first row
tellraw @a[tag=sab.tellMe] {nbt:"text_builder",storage:"sa_bots:waypoint_info",interpret:true}