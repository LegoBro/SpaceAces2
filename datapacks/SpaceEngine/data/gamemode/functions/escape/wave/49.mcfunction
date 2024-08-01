#Commands for wave 49 (dynamic)
scoreboard players set waveDelay Numbers 1300
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/final_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/final_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/final_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/final_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/final_boss
bossbar set minecraft:main max 1300
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 50