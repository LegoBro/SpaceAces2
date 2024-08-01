#Commands for wave 9 (dynamic)
scoreboard players set waveDelay Numbers 300
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/armored_bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/armored_boss
tellraw @a[tag=escape] {"translate":"armored_boss"}
bossbar set minecraft:main max 300
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 10