# Loads setback (dynamic)
scoreboard players set ActiveMode Numbers 2

scoreboard players set respawnTime Numbers 0
execute as @a[tag=ready] run scoreboard players add respawnTime Numbers 30
scoreboard players set blueCapture Numbers 0
scoreboard players set redCapture Numbers 0
scoreboard players set point Numbers 0
scoreboard players set activePoint Numbers 1

scoreboard players set fullPoint Numbers 300

tag @e[type=marker,tag=capture_point_main] add active_capture_point

execute store result score #capture_delay gamemode run data get storage space_aces:gamemodes gamemodes[{"name":"setback"}].start_delay

bossbar set minecraft:main name ["",{"text":"Capture Progress",color:"white","type":"text"}]
bossbar set minecraft:main value 0
return 1