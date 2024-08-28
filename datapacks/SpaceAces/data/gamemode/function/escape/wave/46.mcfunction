#Commands for wave 46 (dynamic)
scoreboard players set waveDelay Numbers 1225
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_explosive_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_explosive_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_explosive_bot
bossbar set minecraft:main max 1225
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 47
return 1