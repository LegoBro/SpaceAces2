## Cloud emitter - spawns clouds over interval
scoreboard players add @s weather.timer 1

execute if score @s weather.timer matches 1.. run function weather:cloud_emitter/spawn_attempt
