## Visualizes spawnpoints
# Blue/Red/Misc SPawnpoints (forward/middle for setback)
execute as @e[type=marker,tag=blue_spawn_point] at @s run particle block_crumble{block_state:blue_concrete} ~ ~1 ~ 0 0 0 0 1 normal @a[tag=dev.spawnpoints]
execute as @e[type=marker,tag=red_spawn_point] at @s run particle block_crumble{block_state:red_concrete} ~ ~1 ~ 0 0 0 0 1 normal @a[tag=dev.spawnpoints]
execute as @e[type=marker,tag=general_spawn_point] at @s run particle block_crumble{block_state:white_concrete} ~ ~1 ~ 0 0 0 0 1 normal @a[tag=dev.spawnpoints]

execute as @a[tag=dev.spawnpoints,gamemode=!adventure] at @s if entity @n[type=marker,tag=gamemode.spawnpoint,distance=..5] run title @s actionbar [{text:"Spawnpoint Progression Value: "},{nbt:"data.progress",entity:"@n[type=marker,tag=gamemode.spawnpoint]"}," ",{score:{name:"@n[type=marker,tag=gamemode.spawnpoint]",objective:"gamemode.spawnpoint.progress"},color:"green"}]