# Loads setback (dynamic)

scoreboard players set ActiveMode Numbers 2

scoreboard players set respawnTime Numbers 0
execute as @a[tag=ready] run scoreboard players add respawnTime Numbers 30
scoreboard players set blueCapture Numbers 0
scoreboard players set redCapture Numbers 0
scoreboard players set point Numbers 0
scoreboard players set activePoint Numbers 0

scoreboard players set fullPoint Numbers 300

scoreboard objectives add gamemode.setback.point dummy
schedule function gamemode:setback/load_points 10s

execute store result score #capture_delay gamemode run data get storage space_aces:gamemodes gamemodes[{"name":"setback"}].start_delay

bossbar set minecraft:main name ["",{"text":"Capture Progress",color:"white","type":"text"}]
bossbar set minecraft:main value 0


return 1