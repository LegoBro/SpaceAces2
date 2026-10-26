scoreboard players remove gamemode.payload.speed Numbers 1
tp @s ^ ^ ^0.1 facing entity @n[type=marker,tag=active_payload_path]
execute store result bossbar minecraft:main value run scoreboard players add gamemode.payload.distance Numbers 1

execute if score gamemode.payload.speed Numbers matches 1.. at @s run function gamemode:payload/payload_progress