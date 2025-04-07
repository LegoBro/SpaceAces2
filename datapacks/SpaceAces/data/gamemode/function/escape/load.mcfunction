# Loads escape (dynamic)
scoreboard players set ActiveMode Numbers 5
tag @a[tag=awaiting] add in_game
tag @a[tag=in_game] remove awaiting
bossbar set minecraft:main name ["",{"text":"Next Wave",color:"white","type":"text"}]
bossbar set main players @a[tag=in_game]
scoreboard players set wave Numbers 1
scoreboard players set waveDelay Numbers 200
bossbar set minecraft:main max 200
scoreboard objectives modify display displayname {"text":"Escape:",color:"green","type":"text"}
scoreboard players reset Mission display
scoreboard players set currency Numbers 0
function gamemode:escape/unlock/entry
tag @a[tag=in_game] add escape
tag @a[tag=escape] add no_2
tag @a[tag=escape] add no_3
scoreboard players set bot_base_health Numbers 40
execute as @a[tag=escape] run scoreboard players add bot_base_health Numbers 10
scoreboard players set time Numbers 0
return 1