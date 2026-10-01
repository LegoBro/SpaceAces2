## Calculates location IDs
scoreboard players reset @e[type=marker,tag=gamemode.payload.path] payload
scoreboard players set $current_id payload 0
execute as @n[type=marker,tag=gamemode.payload.start] at @s run function dev:gamemode/payload/calc_path

execute if score @n[type=marker,tag=gamemode.payload.end] payload matches 1.. run return run tellraw @s [{text:"Payload Success"}]

return run tellraw @s [{text:"Payload End not connected."}]