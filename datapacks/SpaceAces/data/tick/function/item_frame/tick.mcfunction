## Ticks for item frames

# changes health pack models when they are charged/used
execute if entity @s[tag=weak_health,scores={j=50},nbt=!{Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/weak_heal_active"},count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/weak_heal_active"},count:1}}
execute if entity @s[tag=weak_health,scores={j=0},nbt=!{Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/weak_heal_inactive"},count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/weak_heal_inactive"},count:1}}
execute if entity @s[tag=strong_health,scores={j=100},nbt=!{Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/strong_heal_active"},count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/strong_heal_active"},count:1}}
execute if entity @s[tag=strong_health,scores={j=0},nbt=!{Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/strong_heal_inactive"},count:1}}] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/strong_heal_inactive"},count:1}}
execute if entity @s[nbt=!{ItemRotation:0b}] run data merge entity @s {ItemRotation:0b}

# Health Packs
scoreboard players add @s[tag=health_pack] i 1
scoreboard players add @s[tag=health_pack,scores={i=10}] j 1
scoreboard players set @s[tag=weak_health,scores={j=51..}] j 50
scoreboard players set @s[tag=strong_health,scores={j=101..}] j 100
scoreboard players reset @s[tag=health_pack,scores={i=10..}] i
execute if entity @s[tag=health_pack,scores={j=1..}] at @s if entity @p[distance=...5,team=!spectator] run scoreboard players operation @p healing += @s j
execute if entity @s[tag=health_pack,tag=weak_health,scores={j=50..}] at @s if entity @p[distance=...5,team=!spectator] run effect give @p minecraft:saturation 4 0 true
execute if entity @s[tag=health_pack,tag=weak_health,scores={j=50..}] at @s if entity @p[distance=...5,team=!spectator] run playsound minecraft:health_pack master @a ~ ~ ~ 1 2
execute if entity @s[tag=health_pack,tag=strong_health,scores={j=100..}] at @s if entity @p[distance=...5,team=!spectator] run effect give @p minecraft:saturation 8 0 true
execute if entity @s[tag=health_pack,tag=strong_health,scores={j=100..}] at @s if entity @p[distance=...5,team=!spectator] run playsound minecraft:health_pack master @a ~ ~ ~ 1 1
execute if entity @s[tag=health_pack,scores={j=1..}] at @s if entity @p[distance=...5,team=!spectator] run scoreboard players set @s j 0
tag @s[tag=!ignore] add ignore

return 1