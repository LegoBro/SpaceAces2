#Commands for wave 15 (dynamic)
scoreboard players set waveDelay Numbers 450
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
tellraw @a[tag=escape] {"translate":"mine_runner"}
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
bossbar set minecraft:main max 450
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 16