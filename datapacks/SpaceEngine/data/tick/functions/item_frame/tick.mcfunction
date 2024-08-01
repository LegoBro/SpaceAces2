## Ticks for item frames

# changes health pack models when they are charged/used
execute as @s[tag=weak_health,scores={j=50},nbt=!{Item:{id:"minecraft:baked_potato",Count:1b,tag:{CustomModelData:11000001}}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",Count:1b,Invulnerable:1b,tag:{CustomModelData:11000001}}}
execute as @s[tag=weak_health,scores={j=0},nbt=!{Item:{id:"minecraft:baked_potato",Count:1b,tag:{CustomModelData:11000003}}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",Count:1b,Invulnerable:1b,tag:{CustomModelData:11000003}}}
execute as @s[tag=strong_health,scores={j=100},nbt=!{Item:{id:"minecraft:baked_potato",Count:1b,tag:{CustomModelData:11000000}}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",Count:1b,Invulnerable:1b,tag:{CustomModelData:11000000}}}
execute as @s[tag=strong_health,scores={j=0},nbt=!{Item:{id:"minecraft:baked_potato",Count:1b,tag:{CustomModelData:11000002}}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",Count:1b,Invulnerable:1b,tag:{CustomModelData:11000002}}}
execute as @s[nbt=!{ItemRotation:0b}] run data merge entity @s {ItemRotation:0b}

# Health Packs
scoreboard players add @s[tag=health_pack] i 1
scoreboard players add @s[tag=health_pack,scores={i=10}] j 1
scoreboard players set @s[tag=weak_health,scores={j=51..}] j 50
scoreboard players set @s[tag=strong_health,scores={j=101..}] j 100
scoreboard players reset @s[tag=health_pack,scores={i=10..}] i
execute as @s[tag=health_pack,scores={j=1..}] at @s if entity @p[distance=...5,team=!spectator] run scoreboard players operation @p healing += @s j
execute as @s[tag=health_pack,tag=weak_health,scores={j=50..}] at @s if entity @p[distance=...5,team=!spectator] run effect give @p saturation 4 0 true
execute as @s[tag=health_pack,tag=weak_health,scores={j=50..}] at @s if entity @p[distance=...5,team=!spectator] run playsound minecraft:health_pack master @a ~ ~ ~ 1 2
execute as @s[tag=health_pack,tag=strong_health,scores={j=100..}] at @s if entity @p[distance=...5,team=!spectator] run effect give @p saturation 8 0 true
execute as @s[tag=health_pack,tag=strong_health,scores={j=100..}] at @s if entity @p[distance=...5,team=!spectator] run playsound minecraft:health_pack master @a ~ ~ ~ 1 1
execute as @s[tag=health_pack,scores={j=1..}] at @s if entity @p[distance=...5,team=!spectator] run scoreboard players set @s j 0
tag @s[tag=!ignore] add ignore
