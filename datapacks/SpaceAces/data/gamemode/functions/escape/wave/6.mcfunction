#Commands for wave 6 (dynamic)
scoreboard players set waveDelay Numbers 225
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/armored_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/armored_bot
bossbar set minecraft:main max 225
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 7