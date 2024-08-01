#Commands for wave 46 (dynamic)
scoreboard players set waveDelay Numbers 1225
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_explosive_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_explosive_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_explosive_bot
bossbar set minecraft:main max 1225
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 47