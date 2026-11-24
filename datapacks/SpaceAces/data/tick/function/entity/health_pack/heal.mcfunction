tag @s remove charged
execute unless score @s j matches 1.. run return 0

scoreboard players set @s i 0

kill @n[tag=health_pack.icon,distance=..1]
execute if entity @s[tag=ult_pack] run return run function tick:entity/health_pack/ult

scoreboard players operation @n[type=#projectile:players,tag=hb,distance=...5] healing += @s j
execute if entity @s[tag=weak_health,scores={j=50..}] run playsound minecraft:health_pack master @a ~ ~ ~ 1 2
execute if entity @s[tag=strong_health,scores={j=100..}] run playsound minecraft:health_pack master @a ~ ~ ~ 1 1
execute if entity @s[tag=weak_health] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/weak_heal_inactive"},count:1}}
execute if entity @s[tag=strong_health] run data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/strong_heal_inactive"},count:1}}
scoreboard players set @s j 0