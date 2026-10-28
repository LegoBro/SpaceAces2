execute if score @s payload = @n[type=marker,tag=active_payload_path,tag=gamemode.payload.checkpoint,distance=..0.1] payload run function gamemode:payload/next_checkpoint

scoreboard players add @s payload 1

tag @e[type=marker,tag=forward_payload_path] remove forward_payload_path
tag @e[type=marker,tag=backward_payload_path] remove backward_payload_path

scoreboard players operation payload payload = @s payload



scoreboard players operation forward payload = payload payload
scoreboard players add forward payload 5

execute as @e[type=marker,tag=gamemode.payload.path] if score @s payload = forward payload run tag @s add forward_payload_path

scoreboard players operation backward payload = payload payload
scoreboard players remove backward payload 5

execute as @e[type=marker,tag=gamemode.payload.path] if score @s payload = backward payload run tag @s add backward_payload_path
