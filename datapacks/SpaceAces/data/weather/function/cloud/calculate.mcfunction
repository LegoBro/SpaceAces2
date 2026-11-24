## Calculates expected weather lifespan

$item replace entity @s container.0 with stone[item_model="$(model)"]

$execute store result storage weather:cloud_emitter pos_offset.x float .01 run random value -$(spread_x)00..$(spread_x)00
$execute store result storage weather:cloud_emitter pos_offset.y float .01 run random value -$(spread_y)00..$(spread_y)00
$execute store result storage weather:cloud_emitter pos_offset.z float .01 run random value -$(spread_z)00..$(spread_z)00
function weather:cloud/offset_position with storage weather:cloud_emitter pos_offset


scoreboard players operation @s weather.size = #cloud weather.size
scoreboard players operation @s weather.speed = #cloud weather.speed

# Possible Speeds 0.01-.1 (.2b/s - 2b/s)

scoreboard players operation @s weather.lifespan = #map_size weather.size

scoreboard players operation @s weather.lifespan *= 100 Numbers

scoreboard players operation #speed_math weather.speed = @s weather.speed
scoreboard players add #speed_math weather.speed 1

scoreboard players operation @s weather.lifespan /= #speed_math weather.speed

tag @s remove weather.spawn