## Waiting for next point...
scoreboard players remove #capture_delay gamemode 1
scoreboard players set point Numbers 0

bossbar set minecraft:main color white
bossbar set minecraft:main name ["",{"text":"Awaiting Next Point",color:"white","type":"text"}]
execute store result bossbar minecraft:main max run data get storage space_aces:gamemodes gamemodes[{"name":"setback"}].capture_delay
execute store result bossbar minecraft:main value run scoreboard players get #capture_delay gamemode