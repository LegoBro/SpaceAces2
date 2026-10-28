scoreboard players remove gamemode.payload.speed Numbers 1
tp @s ^ ^ ^0.1 facing entity @n[type=marker,tag=active_payload_path]
execute store result bossbar minecraft:main value run scoreboard players add gamemode.payload.distance Numbers 1


execute as @e[type=pig,tag=payload] at @s if score @s payload = @n[type=marker,tag=active_payload_path,distance=..0.1] payload run function gamemode:payload/next_path

tag @e[type=marker,tag=active_payload_path] remove active_payload_path
execute as @e[type=marker,tag=gamemode.payload.path] if score @s payload = @n[type=pig,tag=payload] payload run tag @s add active_payload_path

execute if score gamemode.payload.speed Numbers matches 1.. at @s run function gamemode:payload/payload_progress