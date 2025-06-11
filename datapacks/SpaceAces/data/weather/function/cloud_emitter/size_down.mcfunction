

scoreboard players remove @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.size 1
execute as @n[type=marker,tag=weather.cloud_emitter,distance=..1] if score @s weather.size matches ..-1 run scoreboard players set @s weather.size 0

execute as @n[type=marker,tag=weather.cloud_emitter] run function weather:cloud_emitter/calculate

kill @s