# Loads setback (dynamic)
scoreboard players set ActiveMode Numbers 4

scoreboard players set checkpoint Numbers 0
function gamemode:payload/update_spawn_points

scoreboard objectives setdisplay sidebar display
scoreboard players set timer Numbers 4800


# Spawn Payload
kill @e[type=pig]
execute at @n[type=marker,tag=payload_path,scores={payload=0}] run summon pig ~ ~ ~ {NoAI:1b,Tags:["payload"],Rotation:[0f,0f]}
scoreboard players add @e[type=pig,tag=payload] payload 0

## Calculate Distances, each checkpoint includes the checkpoints before it, so 3 is the full distance of the track

scoreboard players set payload.progress Numbers 0
scoreboard players set checkpoint.distance.1 Numbers 0
scoreboard players set checkpoint.distance.2 Numbers 0
scoreboard players set checkpoint.distance.3 Numbers 0

execute as @e[type=marker,tag=payload_path] run scoreboard players operation checkpoint.distance.3 Numbers += @s payload.distance

execute as @e[type=marker,tag=payload_path,tag=payload_checkpoint] run function gamemode:payload/load_checkpoint_distance

bossbar set minecraft:main name ["",{"text":"Payload Progress",color:"white","type":"text"}]
execute store result bossbar minecraft:main max run scoreboard players get checkpoint.distance.3 Numbers

return 1