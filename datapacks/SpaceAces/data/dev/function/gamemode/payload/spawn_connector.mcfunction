# Spawns payload connector
## Is there a start yet?
execute if entity @n[distance=..15,type=marker,tag=dev.gamemode.payload.connector_start] run return run function dev:gamemode/payload/connect

## Create Start
### Cleans up old starts
tag @e[tag=dev.gamemode.payload.connector_start] remove dev.gamemode.payload.connector_start
tag @n[type=marker,tag=gamemode.payload.path,distance=..1.5] add dev.gamemode.payload.connector_start
kill @s
