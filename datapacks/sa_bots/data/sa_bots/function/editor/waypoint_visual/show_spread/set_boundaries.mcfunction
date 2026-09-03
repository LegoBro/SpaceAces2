#executed by a waypoint that wants to show its spread boundaries
#and these boundaries will be shown to @a[tag=sab.seeSpreadBoundaries]


#clean up tag
tag @s remove sab.visualizeBotWaypointSpread

#don't do anything if we don't have data
execute unless data entity @s data.spread[0] run return 0
#=====

#read data
execute store result score #math sab.var run data get entity @s data.spread[0]
execute store result score #math2 sab.var run data get entity @s data.spread[1]
#don't do anything if both 0
execute if score #math sab.var matches 0 if score #math2 sab.var matches 0 run return 0
#=====

#trail color and speed
data modify storage sa_bots:waypoint trail_color set value "[0.0,0.0,0.0]"
execute if entity @s[tag=sab.visualizeBotWaypointSpreadWhite] run data modify storage sa_bots:waypoint trail_color set value "[1.0,1.0,1.0]"
tag @s[tag=sab.visualizeBotWaypointSpreadWhite] remove sab.visualizeBotWaypointSpreadWhite

#x min
execute store result score #x sab.var run data get entity @s Pos[0]
execute if score #x sab.var matches ..-1 run scoreboard players add #x sab.var 1
scoreboard players operation #x sab.var -= #math sab.var
execute store result storage sa_bots:waypoint x_min int 1 run scoreboard players get #x sab.var
#x max
execute store result score #x sab.var run data get entity @s Pos[0]
execute if score #x sab.var matches ..-1 run scoreboard players add #x sab.var 1
scoreboard players operation #x sab.var += #math sab.var
execute store result storage sa_bots:waypoint x_max int 1 run scoreboard players get #x sab.var

#y
execute store result score #y sab.var run data get entity @s Pos[1]
execute unless block ~ ~ ~ #sa_bots:not_solid_exclude_water run scoreboard players add #y sab.var 1
execute store result storage sa_bots:waypoint y int 1 run scoreboard players get #y sab.var

#z min
execute store result score #z sab.var run data get entity @s Pos[2]
execute if score #z sab.var matches ..-1 run scoreboard players add #z sab.var 1
scoreboard players operation #z sab.var -= #math2 sab.var
execute store result storage sa_bots:waypoint z_min int 1 run scoreboard players get #z sab.var
#z max
execute store result score #z sab.var run data get entity @s Pos[2]
execute if score #z sab.var matches ..-1 run scoreboard players add #z sab.var 1
scoreboard players operation #z sab.var += #math2 sab.var
execute store result storage sa_bots:waypoint z_max int 1 run scoreboard players get #z sab.var

#fix bugs at negative coordinates
execute store result storage sa_bots:waypoint x_fix int 1 run execute if score #x sab.var matches ..-1
execute store result storage sa_bots:waypoint z_fix int 1 run execute if score #z sab.var matches ..-1

#now make particles!
function sa_bots:editor/waypoint_visual/show_spread/draw_boundaries_macro with storage sa_bots:waypoint