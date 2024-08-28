#Commands for wave 4 (dynamic)
scoreboard players set waveDelay Numbers 175
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
bossbar set minecraft:main max 175
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 5
return 1