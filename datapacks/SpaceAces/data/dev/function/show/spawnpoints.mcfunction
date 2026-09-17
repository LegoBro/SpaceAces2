## Visualizes spawnpoints
# Blue/Red/Misc SPawnpoints (forward/middle for setback)
execute as @e[type=marker,tag=blue_spawn_point] at @s run particle block_crumble{block_state:blue_concrete} ~ ~1 ~ 0 0 0 0 1 normal @a[tag=dev.spawnpoints]
execute as @e[type=marker,tag=red_spawn_point] at @s run particle block_crumble{block_state:red_concrete} ~ ~1 ~ 0 0 0 0 1 normal @a[tag=dev.spawnpoints]
execute as @e[type=marker,tag=general_spawn_point] at @s run particle block_crumble{block_state:white_concrete} ~ ~1 ~ 0 0 0 0 1 normal @a[tag=dev.spawnpoints]