## When in Dev Mode, tick for these entities:


execute as @a[gamemode=creative] at @s if entity @n[type=marker,distance=..3,tag=weather.cloud_emitter] run title @s actionbar [{color:"white","text":"Size: "},{color:"aqua","score":{"name":"@n[type=marker,tag=weather.cloud_emitter]","objective":"weather.speed"}},{text:" Size "},{color:"aqua","score":{"name":"@n[type=marker,tag=weather.cloud_emitter]","objective":"weather.size"}},{text:" Density "},{color:"aqua","score":{"name":"@n[type=marker,tag=weather.cloud_emitter]","objective":"weather.density"}}]

execute as @e[type=marker,tag=weather.cloud_emitter] at @s run particle block{block_state:white_stained_glass} ~ ~ ~ 0 0 0 0 1 normal

execute as @e[type=marker,tag=weather.cloud_emitter,tag=weather.spawn] at @s run function weather:cloud_emitter/paste
execute as @e[type=marker,tag=weather.cloud_emitter.speed_up] at @s run function weather:cloud_emitter/speed_up
execute as @e[type=marker,tag=weather.cloud_emitter.speed_down] at @s run function weather:cloud_emitter/speed_down
execute as @e[type=marker,tag=weather.cloud_emitter.size_up] at @s run function weather:cloud_emitter/size_up
execute as @e[type=marker,tag=weather.cloud_emitter.size_down] at @s run function weather:cloud_emitter/size_down

execute as @e[type=marker,tag=weather.cloud_emitter.copy] at @s run function weather:cloud_emitter/copy
execute as @e[type=marker,tag=weather.cloud_emitter.paste] at @s run function weather:cloud_emitter/paste

