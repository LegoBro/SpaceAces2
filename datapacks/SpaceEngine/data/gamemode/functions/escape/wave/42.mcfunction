#Commands for wave 42 (dynamic)
scoreboard players set waveDelay Numbers 1125
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/zap_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/zap_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/zap_bot
bossbar set minecraft:main max 1125
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 43