## Calculates expected weather lifespan

scoreboard players operation @s weather.size = #default weather.size
scoreboard players operation @s weather.speed = #default weather.speed

# Possible Speeds 0.01-.1 (.2b/s - 2b/s)

scoreboard players operation @s weather.lifespan = #map_size weather.size

scoreboard players operation #speed_math weather.speed = @s weather.speed
scoreboard players add #speed_math weather.speed 1

scoreboard players operation @s weather.lifespan /= #speed_math speed
scoreboard players operation @s weather.lifespan *= 50 Numbers
