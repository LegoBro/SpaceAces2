#Commands for wave 15 (dynamic)
scoreboard players set waveDelay Numbers 450
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/mine_runner
tellraw @a[tag=escape] {"translate":"mine_runner"}
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/mine_runner
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/mine_runner
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/mine_runner
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/mine_runner
bossbar set minecraft:main max 450
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 16
return 1