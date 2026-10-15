
# Clears active point
tag @e[type=marker,tag=gamemode.setback.point] remove gamemode.setback.active_point

#execute if score activePoint Numbers matches 0 run tag @e[type=marker,tag=capture_point_red] add active_capture_point
#execute if score activePoint Numbers matches 1 run tag @e[type=marker,tag=capture_point_main] add active_capture_point
#execute if score activePoint Numbers matches 2 run tag @e[type=marker,tag=capture_point_blue] add active_capture_point



execute as @e[tag=gamemode.setback.point] if score @s gamemode.setback.point = activePoint Numbers run tag @s add gamemode.setback.active_point