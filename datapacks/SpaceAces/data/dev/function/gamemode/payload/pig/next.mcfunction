# Copy the i amount from pig to path for distance calculations
execute store result entity @n[type=marker,tag=active_payload_path,distance=..0.1] data.gamemode.payload.path.length int 1 run scoreboard players get @s i

scoreboard players set @s i 0
scoreboard players add @s payload 1