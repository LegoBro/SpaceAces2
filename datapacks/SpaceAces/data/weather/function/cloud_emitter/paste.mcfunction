## Pastes cloud data from scoreboards
tag @n[type=marker,tag=weather.cloud_emitter,distance=..1] remove weather.spawn
scoreboard players operation @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.speed = #default weather.speed
scoreboard players operation @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.size = #default weather.size
scoreboard players operation @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.density = #default weather.density

execute as @n[type=marker,tag=weather.cloud_emitter] run function weather:cloud_emitter/calculate

kill @s[type=marker,tag=weather.cloud_emitter.paste]