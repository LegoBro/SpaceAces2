## Cloud emitter - spawns clouds over interval
scoreboard players add @s weather.timer 1
# Not ready
execute unless score @s weather.timer matches 0.. run return 0

# Spawn Cloud Group
execute store result score @s weather.density run data get entity @s data.weather.density
execute store result storage weather:cloud_emitter density int 1 run scoreboard players get @s weather.density

scoreboard players operation #density Numbers = @s weather.density
function weather:cloud_emitter/group_anchor with entity @s data.weather