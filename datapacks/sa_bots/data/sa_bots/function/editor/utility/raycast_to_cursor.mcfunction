scoreboard players remove #recursions sab.var 1

execute if score #recursions sab.var matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #sa_bots:not_solid unless entity @e[type=marker,tag=sab.botWaypoint,distance=..0.75] run return run function sa_bots:editor/utility/raycast_to_cursor
#=====

#summon a Marker indicating where we're looking
summon marker ~ ~ ~ {UUID:[I;10,0,0,1]}