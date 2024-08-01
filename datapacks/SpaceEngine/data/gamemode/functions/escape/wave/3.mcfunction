#Commands for wave 3 (dynamic)
scoreboard players set waveDelay Numbers 150
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
bossbar set minecraft:main max 150
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 4