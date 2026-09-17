## Payload
# safety in case the actual game is running
execute unless entity @e[type=pig,tag=payload] run function dev:tick/payload

# Other payload displays
execute as @a[gamemode=creative] at @s if entity @n[type=marker,distance=..3,tag=payload_path] run title @s actionbar [{color:"white","text":"Payload Path: "},{color:"aqua","score":{"name":"@n[type=marker,tag=payload_path]","objective":"payload"}}]
execute as @e[tag=payload_path,tag=!active_payload_path] at @s positioned ~ ~1 ~ run particle flame
execute as @e[tag=payload_path,tag=active_payload_path] at @s positioned ~ ~1 ~ run particle minecraft:soul_fire_flame

execute as @e[tag=active_blue_spawn_point] at @s run particle block_crumble{block_state:blue_concrete} ~ ~1 ~
execute as @e[tag=active_red_spawn_point] at @s run particle block_crumble{block_state:red_concrete} ~ ~1 ~
execute as @e[tag=payload_spawn_point] at @s run particle block_crumble{block_state:white_concrete} ~ ~1 ~

execute as @e[tag=payload_checkpoint] at @s run particle minecraft:small_flame ~ ~1 ~ 0 1 0 0 3 normal