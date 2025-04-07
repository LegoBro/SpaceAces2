#Commands for wave 40 (dynamic)
scoreboard players set waveDelay Numbers 1075
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/armored_boss
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/mechanic_boss
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/ranged_boss
execute at @e[type=minecraft:item_frame,tag=spawner,tag=active,sort=random,limit=1] run function enemies:summon/final_boss
tellraw @a[tag=escape] {translate:"final_boss"}
bossbar set minecraft:main max 1075
scoreboard players operation currency Numbers += wave Numbers
scoreboard players set wave Numbers 41
return 1