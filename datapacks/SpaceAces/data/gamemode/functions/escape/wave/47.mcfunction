#Commands for wave 47 (dynamic)
scoreboard players set waveDelay Numbers 1250
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
bossbar set minecraft:main max 1250
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 48