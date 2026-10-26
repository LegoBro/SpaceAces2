## Loads checkpoint distances, called by checkpoint markers

execute store result score @s payload.distance run data get entity @s data.gamemode.payload.path.length

scoreboard players operation gamemode.payload.total_distance Numbers += @s payload.distance
