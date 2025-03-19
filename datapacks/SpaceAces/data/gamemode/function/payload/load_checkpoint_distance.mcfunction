## Loads checkpoint distances, called by checkpoint markers

scoreboard players set payload.distance Numbers 0

scoreboard players operation #payload_path_test Numbers = @s payload
execute as @e[type=marker,tag=payload_path] if score @s payload <= #payload_path_test Numbers run scoreboard players operation payload.distance Numbers += @s payload.distance

# Adds 1 to payload.check(point).id for every checkpoint with lower payload path
scoreboard players set #test payload.check.id 0
execute as @e[type=marker,tag=payload_path,tag=payload_checkpoint] if score @s payload < #payload_path_test Numbers run scoreboard players add #test payload.check.id 1

scoreboard players operation @s payload.check.id = #test payload.check.id

execute if score @s payload.check.id matches 0 run scoreboard players operation checkpoint.distance.1 Numbers = payload.distance Numbers
execute if score @s payload.check.id matches 1 run scoreboard players operation checkpoint.distance.2 Numbers = payload.distance Numbers