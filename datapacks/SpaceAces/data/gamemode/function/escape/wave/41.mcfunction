#Commands for wave 41 (dynamic)
scoreboard players set waveDelay Numbers 1100
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/zap_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_boss
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_boss
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_boss
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_boss
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_boss
bossbar set minecraft:main max 1100
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 42
return 1