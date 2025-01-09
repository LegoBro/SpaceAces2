## Dev Mode Ticking
# Health Packs
execute as @e[tag=weak_health_pack] at @s run particle heart
execute as @e[tag=strong_health_pack] at @s run particle minecraft:damage_indicator


# Blue/Red/Misc SPawnpoints (forward/middle for setback)

execute as @e[tag=blue_spawn_point] at @s run particle block_crumble{block_state:blue_concrete}
execute as @e[tag=red_spawn_point] at @s run particle block_crumble{block_state:red_concrete}
execute as @e[tag=general_spawn_point] at @s run particle block_crumble{block_state:white_concrete}

# Capture Point
execute as @e[tag=capture_point] at @s run particle minecraft:raid_omen

## Marker Killer
execute as @e[type=marker,tag=kill_marker] at @s run kill @e[type=marker,limit=2,sort=nearest,distance=..1]