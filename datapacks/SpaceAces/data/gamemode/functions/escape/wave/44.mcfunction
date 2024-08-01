#Commands for wave 44 (dynamic)
scoreboard players set waveDelay Numbers 1175
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mechanic_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mechanic_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mechanic_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mechanic_boss
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mechanic_boss
bossbar set minecraft:main max 1175
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 45