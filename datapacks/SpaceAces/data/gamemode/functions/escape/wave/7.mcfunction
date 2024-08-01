#Commands for wave 7 (dynamic)
scoreboard players set waveDelay Numbers 250
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/armored_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/armored_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/armored_bot
bossbar set minecraft:main max 250
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 8