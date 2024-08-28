#Commands for wave 42 (dynamic)
scoreboard players set waveDelay Numbers 1125
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
bossbar set minecraft:main max 1125
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 43
return 1