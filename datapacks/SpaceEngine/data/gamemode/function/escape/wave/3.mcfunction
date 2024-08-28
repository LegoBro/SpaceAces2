#Commands for wave 3 (dynamic)
scoreboard players set waveDelay Numbers 150
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
bossbar set minecraft:main max 150
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 4
return 1