## Additional ticking for payload

execute as @n[type=marker,tag=payload_spawn_point_spawn] at @s store result score @s payload if entity @e[type=marker,tag=payload_spawn_point,distance=..512]
execute as @n[type=marker,tag=payload_spawn_point_spawn] run tag @s add payload_spawn_point
execute as @n[type=marker,tag=payload_spawn_point_spawn] run tag @s remove payload_spawn_point_spawn

# payload Path marker setup
execute as @n[type=marker,tag=payload_path_spawn] at @s store result score @s payload if entity @e[type=marker,tag=payload_path,distance=..512]
execute as @n[type=marker,tag=payload_path_spawn] run tag @s add payload_path
execute as @n[type=marker,tag=payload_path_spawn] run tag @s remove payload_path_spawn
execute as @e[type=marker,tag=payload_increment] at @s run scoreboard players add @n[type=marker,tag=payload_path] payload 1
execute as @e[type=marker,tag=payload_decrement] at @s run scoreboard players remove @n[type=marker,tag=payload_path] payload 1
execute as @e[type=marker,tag=payload_checkpoint,tag=kill] at @s run tag @e[type=marker,tag=payload_path,distance=..1] add payload_checkpoint

# Pig Pathing :D
execute as @e[type=pig,tag=payload_test] at @s run tp @s ^ ^ ^0.1 facing entity @n[type=marker,tag=active_payload_path]
execute as @e[type=pig,tag=payload_test] at @s if score @s payload = @n[type=marker,tag=active_payload_path,distance=..0.1] payload run scoreboard players add @s payload 1
tag @e[type=marker,tag=active_payload_path] remove active_payload_path
execute as @e[type=marker,tag=payload_path] if score @s payload = @n[type=pig,tag=payload_test] payload run function dev:payload/set_active_path
execute unless entity @n[type=marker,tag=active_payload_path] run kill @n[type=pig,tag=payload_test]
execute unless entity @n[type=pig,tag=payload_test] at @n[type=marker,tag=payload_path,scores={payload=0}] run summon pig ~ ~ ~ {NoAI:1b,Tags:["payload_test"],Rotation:[0f,0f]}
scoreboard players add @e[type=pig,tag=payload_test] payload 0

# Adds to the active path timer
scoreboard players add @e[type=marker,tag=payload_path,tag=active_payload_path] payload.distance 1