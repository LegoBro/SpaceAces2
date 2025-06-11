## Weather objective
scoreboard objectives add weather.speed dummy
scoreboard objectives add weather.size dummy
scoreboard objectives add weather.timer dummy
scoreboard objectives add weather.lifespan dummy
scoreboard objectives add weather.density dummy

execute as @e[type=marker,tag=weather.cloud_emitter] run function weather:cloud_emitter/calculate