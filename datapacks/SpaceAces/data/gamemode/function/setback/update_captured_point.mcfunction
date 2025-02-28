
## Sets the tag "active_capture_point" based on the scoreboard
tag @e[type=marker,tag=capture_point] remove active_capture_point

execute if score activePoint Numbers matches 0 run tag @e[type=marker,tag=capture_point_red] add active_capture_point
execute if score activePoint Numbers matches 1 run tag @e[type=marker,tag=capture_point_main] add active_capture_point
execute if score activePoint Numbers matches 2 run tag @e[type=marker,tag=capture_point_blue] add active_capture_point