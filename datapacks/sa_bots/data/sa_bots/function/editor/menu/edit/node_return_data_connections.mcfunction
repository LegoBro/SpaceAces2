#executed by target waypoint
#we will report back to players with "tag=sab.tellMe"


#node name
data modify storage sa_bots:generic string set from entity @s data.uuid4
tellraw @a[tag=sab.tellMe] [{translate:"sa_bot.menu.waypoint_connections",color:white,with:[\
    {nbt:"string",storage:"sa_bots:generic",interpret:true,color:red} \
    ]}]

#connections (if any)
data modify storage sa_bots:waypoint i set value 0
data modify storage sa_bots:waypoint i_5digit set value 10000
scoreboard players set #i sab.var 1
scoreboard players set #i_5digit sab.var 10001
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.outgoing[0] run function sa_bots:editor/menu/edit/interate_through_connections with storage sa_bots:waypoint