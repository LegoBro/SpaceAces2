#Commands for wave 1 (dynamic)
scoreboard players set waveDelay Numbers 100
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/bot
tellraw @a[tag=escape] {translate:"bot"}
bossbar set minecraft:main max 100
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 2
return 1