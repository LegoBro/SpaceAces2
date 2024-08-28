#Commands for wave 9 (dynamic)
scoreboard players set waveDelay Numbers 300
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/armored_bot
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/armored_boss
tellraw @a[tag=escape] {"translate":"armored_boss"}
bossbar set minecraft:main max 300
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 10
return 1