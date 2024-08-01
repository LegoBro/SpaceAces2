#Commands for wave 31 (dynamic)
scoreboard players set waveDelay Numbers 850
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/poison_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/poison_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/poison_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/poison_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/poison_bot
bossbar set minecraft:main max 850
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 32