# Connects two payload points
tag @n[type=marker,tag=gamemode.payload.path,tag=!dev.gamemode.payload.connector_start,distance=..1.5] add dev.gamemode.payload.connector_end

execute unless entity @n[type=marker,tag=dev.gamemode.payload.connector_end] run return run kill @s

data modify storage dev:gamemode payload.start set from entity @n[tag=dev.gamemode.payload.connector_start] Pos
data modify storage dev:gamemode payload.end set from entity @n[tag=dev.gamemode.payload.connector_end] Pos

data modify entity @n[tag=dev.gamemode.payload.connector_start] data.gamemode.payload.path.next set from storage dev:gamemode payload.end
data modify entity @n[tag=dev.gamemode.payload.connector_end] data.gamemode.payload.path.previous set from storage dev:gamemode payload.start


## Cleanup
tag @e[tag=dev.gamemode.payload.connector_start] remove dev.gamemode.payload.connector_start
tag @e[tag=dev.gamemode.payload.connector_end] remove dev.gamemode.payload.connector_end
kill @s