#Commands for wave 5 (dynamic)
scoreboard players set waveDelay Numbers 200
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/armored_bot
tellraw @a[tag=escape] {translate:"armored_bot"}
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/armored_bot
bossbar set minecraft:main max 200
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 6
return 1