#Commands for wave 29 (dynamic)
scoreboard players set waveDelay Numbers 800
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mine_runner
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/ranged_boss
tellraw @a[tag=escape] {"translate":"ranged_boss"}
bossbar set minecraft:main max 800
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 30