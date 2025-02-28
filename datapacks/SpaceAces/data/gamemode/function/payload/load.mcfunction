# Loads setback (dynamic)
scoreboard players set ActiveMode Numbers 5
execute if score Map settings matches 0 run function arena:load/gray_caves

scoreboard players set checkpoint Numbers 0
function gamemode:payload/update_spawn_points

# Spawn Payload
execute unless entity @n[type=pig,tag=payload] at @n[type=marker,tag=payload_path,scores={payload=0}] run summon pig ~ ~ ~ {NoAI:1b,Tags:["payload_test"],Rotation:[0f,0f]}
scoreboard players add @e[type=pig,tag=payload] payload 0

return 1