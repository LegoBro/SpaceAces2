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
# safety in case the actual game is running
execute unless entity @e[type=pig,tag=payload] run function dev:tick/payload

# Other payload displays
execute as @a[gamemode=creative] at @s if entity @n[type=marker,distance=..3,tag=payload_path] run title @s actionbar [{"color":"white","text":"Payload Path: "},{"color":"aqua","score":{"name":"@n[type=marker,tag=payload_path]","objective":"payload"}}]
execute as @e[tag=payload_path,tag=!active_payload_path] at @s positioned ~ ~1 ~ run particle flame
execute as @e[tag=payload_path,tag=active_payload_path] at @s positioned ~ ~1 ~ run particle minecraft:soul_fire_flame

execute as @e[tag=active_blue_spawn_point] at @s run particle block_crumble{block_state:blue_concrete} ~ ~1 ~
execute as @e[tag=active_red_spawn_point] at @s run particle block_crumble{block_state:red_concrete} ~ ~1 ~
execute as @e[tag=payload_spawn_point] at @s run particle block_crumble{block_state:white_concrete} ~ ~1 ~

execute as @e[tag=payload_checkpoint] at @s run particle minecraft:small_flame ~ ~1 ~ 0 1 0 0 3 normal


## Marker Killer
execute as @e[type=marker,tag=kill_marker] at @s run kill @e[type=marker,limit=2,sort=nearest,distance=..1]

execute as @e[type=marker,tag=kill] at @s run kill @s