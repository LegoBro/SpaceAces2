#executed by a player using the waypoint editor


#read what sector the nearest bot is going after
scoreboard players set #read sab.var 0
execute as @e[type=mannequin,tag=sab.botEntity,limit=1,sort=nearest,distance=..10] \
    if data entity @s data.destinations[0].sector store result score #read sab.var run data get entity @s data.destinations[0].sector

#adopt score
execute if score #read sab.var matches 1.. run scoreboard players operation #show_nav_channel sab.var = #read sab.var