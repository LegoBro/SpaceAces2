
scoreboard players add @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.size 1
execute as @n[type=marker,tag=weather.cloud_emitter] run function weather:cloud_emitter/calculate
kill @s