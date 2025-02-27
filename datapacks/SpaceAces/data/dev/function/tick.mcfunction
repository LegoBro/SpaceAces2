## Dev Mode Ticking
# Health Packs
execute as @e[tag=strong_health_pack] at @s run particle heart
execute as @e[tag=weak_health_pack] at @s run particle minecraft:damage_indicator


# Blue/Red/Misc SPawnpoints (forward/middle for setback)

execute as @e[tag=blue_spawn_point] at @s run particle block_crumble{block_state:blue_concrete} ~ ~1 ~
execute as @e[tag=red_spawn_point] at @s run particle block_crumble{block_state:red_concrete} ~ ~1 ~
execute as @e[tag=general_spawn_point] at @s run particle block_crumble{block_state:white_concrete} ~ ~1 ~

# Capture Point
execute as @e[tag=capture_point] at @s run particle minecraft:raid_omen

## Payload
# payload marker setup
execute as @n[type=marker,tag=payload_path_spawn] store result score @s payload if entity @e[type=marker,tag=payload_path]
execute as @n[type=marker,tag=payload_path_spawn] run tag @s add payload_path
execute as @n[type=marker,tag=payload_path_spawn] run tag @s remove payload_path_spawn
execute as @e[type=marker,tag=payload_increment] at @s run scoreboard players add @n[type=marker,tag=payload_path] payload 1
execute as @e[type=marker,tag=payload_decrement] at @s run scoreboard players remove @n[type=marker,tag=payload_path] payload 1

# Pig Pathing :D
execute as @e[type=pig,tag=payload_test] at @s run tp @s ^ ^ ^0.05 facing entity @n[type=marker,tag=active_payload_path]
execute as @e[type=pig,tag=payload_test] at @s if score @s payload = @n[type=marker,tag=active_payload_path,distance=..0.05] payload run scoreboard players add @s payload 1
tag @e[type=marker,tag=active_payload_path] remove active_payload_path
execute as @e[type=marker,tag=payload_path] if score @s payload = @n[type=pig,tag=payload_test] payload run tag @s add active_payload_path
execute unless entity @n[type=marker,tag=active_payload_path] run kill @n[type=pig,tag=payload_test]
execute unless entity @n[type=pig,tag=payload_test] at @n[type=marker,tag=payload_path,scores={payload=0}] run summon pig ~ ~ ~ {NoAI:1b,Tags:["payload_test"],Rotation:[0f,0f]}

## Marker Killer
execute as @e[type=marker,tag=kill_marker] at @s run kill @e[type=marker,limit=2,sort=nearest,distance=..1]

execute as @e[type=marker,tag=kill] at @s run kill @s