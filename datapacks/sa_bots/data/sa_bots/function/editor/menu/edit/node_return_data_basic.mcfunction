#executed by target waypoint
#we will report back to players with "tag=sab.tellMe"


#node name
data modify storage sa_bots:generic string set from entity @s data.uuid4
tellraw @a[tag=sab.tellMe] [{translate:"sa_bot.menu.focused_on_waypoint",color:white,with:[\
    {nbt:"string",storage:"sa_bots:generic",interpret:true,color:red} \
    ]}]