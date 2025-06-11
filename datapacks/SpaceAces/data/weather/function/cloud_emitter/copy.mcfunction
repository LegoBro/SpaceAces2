## Copies cloud data into scoreboards, will be pasted to new and pasted clouds

scoreboard players operation #default weather.speed = @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.speed
scoreboard players operation #default weather.size = @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.size
scoreboard players operation #default weather.density = @n[type=marker,tag=weather.cloud_emitter,distance=..1] weather.density

kill @s[type=marker,tag=weather.cloud_emitter.copy]