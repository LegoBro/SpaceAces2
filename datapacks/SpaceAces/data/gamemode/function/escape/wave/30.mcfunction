#Commands for wave 30 (dynamic)
scoreboard players set waveDelay Numbers 825
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/poison_bot
tellraw @a[tag=escape] {translate:"poison_bot"}
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/poison_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/poison_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/poison_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/poison_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/fire_bot
bossbar set minecraft:main max 825
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 31
return 1