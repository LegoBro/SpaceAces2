## Calculates current path entity
scoreboard players operation @s payload = $current_id payload
scoreboard players add $current_id payload 1

execute store result storage dev:helper X float .1 run data get entity @s data.gamemode.payload.path.next[0] 10
execute store result storage dev:helper Y float .1 run data get entity @s data.gamemode.payload.path.next[1] 10
execute store result storage dev:helper Z float .1 run data get entity @s data.gamemode.payload.path.next[2] 10

function dev:gamemode/payload/calc_path_next with storage dev:helper