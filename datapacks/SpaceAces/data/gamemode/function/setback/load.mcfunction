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

bossbar set minecraft:main name ["",{"text":"Capture Progress",color:"white","type":"text"}]
#bossbar set minecraft:blue name ["",{"text":"IGSR Capture Progress",color:"blue","type":"text"}]
#bossbar set minecraft:red name ["",{"text":"RLU Capture Progress",color:"red","type":"text"}]
#execute store result bossbar minecraft:red max run scoreboard players get setScore Numbers
#execute store result bossbar minecraft:blue max run scoreboard players get setScore Numbers
return 1