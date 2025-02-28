## Updates the spawn points, higher is further down the track

tag @n[type=marker,tag=active_blue_spawn_point] remove active_blue_spawn_point
tag @n[type=marker,tag=active_red_spawn_point] remove active_red_spawn_point

execute if score checkpoint Numbers matches 0 run tag @n[type=marker,tag=payload_spawn_point,scores={payload=0}] add active_blue_spawn_point
execute if score checkpoint Numbers matches 0 run tag @n[type=marker,tag=payload_spawn_point,scores={payload=1}] add active_red_spawn_point

execute if score checkpoint Numbers matches 1 run tag @n[type=marker,tag=payload_spawn_point,scores={payload=1}] add active_blue_spawn_point
execute if score checkpoint Numbers matches 1 run tag @n[type=marker,tag=payload_spawn_point,scores={payload=2}] add active_red_spawn_point

execute if score checkpoint Numbers matches 2 run tag @n[type=marker,tag=payload_spawn_point,scores={payload=2}] add active_blue_spawn_point
execute if score checkpoint Numbers matches 2 run tag @n[type=marker,tag=payload_spawn_point,scores={payload=3}] add active_red_spawn_point