#Commands for wave 4 (dynamic)
scoreboard players set waveDelay Numbers 175
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
bossbar set minecraft:main max 175
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 5