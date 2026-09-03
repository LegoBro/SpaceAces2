#executed by a bot waypoint Marker

#store our coordinates
execute store result score #waypoint_x sab.var run data get entity @s Pos[0]
execute store result score #waypoint_y sab.var run data get entity @s Pos[1]
execute store result score #waypoint_z sab.var run data get entity @s Pos[2]


#calculate length for all incoming connections
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
data modify storage sa_bots:waypoint list set value "incoming"
execute if data entity @s data.incoming[0] run function sa_bots:editor/waypoint_connection_length/iterate with storage sa_bots:waypoint
