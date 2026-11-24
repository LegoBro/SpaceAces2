## Pastes cloud data from scoreboards
tag @s remove weather.spawn

data modify entity @s data.weather set from storage weather:cloud_emitter default

kill @s[type=marker,tag=weather.cloud_emitter.paste]

execute as @n[type=marker,tag=weather.cloud_emitter] run function weather:cloud_emitter/calculate
