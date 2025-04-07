#Commands for wave 25 (dynamic)
scoreboard players set waveDelay Numbers 700
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
tellraw @a[tag=escape] {translate:"zap_bot"}
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
bossbar set minecraft:main max 700
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 26
return 1