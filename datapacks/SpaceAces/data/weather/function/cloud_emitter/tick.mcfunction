## Cloud emitter - spawns clouds over interval
scoreboard players add @s weather.timer 1

execute if score @s weather.timer matches 0.. store result storage weather:cloud_emitter density int 1 run scoreboard players get @s weather.density
execute if score @s weather.timer matches 0.. run function weather:cloud_emitter/spawn_attempt with storage weather:cloud_emitter
