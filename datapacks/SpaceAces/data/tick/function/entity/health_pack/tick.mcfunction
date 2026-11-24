
# Health Packs
execute if entity @n[type=#projectile:players,tag=hb,distance=...5] run return run function tick:entity/health_pack/heal
execute if entity @s[tag=charged] run return 0
scoreboard players add @s i 1

scoreboard players operation @s j = @s i
scoreboard players operation @s j /= 10 Numbers
execute if score @s[tag=weak_health] i matches 500 run function tick:entity/health_pack/weak_charged
execute if score @s[tag=strong_health] i matches 1000 run function tick:entity/health_pack/strong_charged
execute if score @s[tag=ult_pack] i matches 100 run function tick:entity/health_pack/ult_charged
scoreboard players set @s[tag=weak_health,scores={j=51..}] j 50
scoreboard players set @s[tag=strong_health,scores={j=101..}] j 100



