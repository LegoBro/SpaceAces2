# Loads setback (dynamic)
scoreboard players set ActiveMode Numbers 4

scoreboard players set checkpoint Numbers 0

scoreboard objectives setdisplay sidebar display
scoreboard players set timer Numbers 4800


# Spawn Payload
kill @e[type=pig]
execute at @n[type=marker,tag=gamemode.payload.start] run summon pig ~ ~ ~ {NoAI:1b,Tags:["payload","gamemode.payload"],Rotation:[0f,0f],Invulnerable:true}
scoreboard players add @e[type=pig,tag=payload] payload 0

## Calculate Distances, each checkpoint includes the checkpoints before it, so 3 is the full distance of the track

scoreboard players set payload.progress Numbers 0
scoreboard players set checkpoint.distance.1 Numbers 0
scoreboard players set checkpoint.distance.2 Numbers 0
scoreboard players set checkpoint.distance.3 Numbers 0

scoreboard players set gamemode.payload.total_distance Numbers 0
scoreboard players set gamemode.payload.distance Numbers 0

execute as @e[type=marker,tag=gamemode.payload.path] run function gamemode:payload/path_total_distance

bossbar set minecraft:main name ["",{"text":"Payload Progress",color:"white","type":"text"}]
execute store result bossbar minecraft:main max run scoreboard players get gamemode.payload.total_distance Numbers

scoreboard players set gamemode.respawn.time.red Numbers 200
scoreboard players set gamemode.respawn.time.blue Numbers 100
schedule function gamemode:comp/respawn/apply_time/team 10s

return 1