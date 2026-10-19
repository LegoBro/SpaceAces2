## Resets all spawnpoints
scoreboard objectives remove gamemode.spawnpoint.progress
scoreboard objectives add gamemode.spawnpoint.progress dummy

execute as @e[type=marker,tag=gamemode.spawnpoint] store result score @s gamemode.spawnpoint.progress run data get entity @s data.progress