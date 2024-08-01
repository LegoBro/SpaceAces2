#Commands for wave 19 (dynamic)
scoreboard players set waveDelay Numbers 550
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/bot
execute at @e[type=item_frame,sort=random,limit=1,tag=spawner,tag=active] run function enemies:summon/mechanic_boss
tellraw @a[tag=escape] {"translate":"mechanic_boss"}
bossbar set minecraft:main max 550
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 20