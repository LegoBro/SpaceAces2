## Additional ticking for payload

# payload Path marker setup
execute as @e[type=marker,tag=dev.gamemode.payload.path_spawn] at @s run function dev:gamemode/payload/spawn_path
execute as @e[type=marker,tag=dev.gamemode.payload.connector_spawn] at @s run function dev:gamemode/payload/spawn_connector
execute as @e[type=marker,tag=dev.gamemode.payload.checkpoint_spawn] at @s run function dev:gamemode/payload/spawn_checkpoint

# Visualize Pathing
data modify storage dev:helper color set value "1.000,1.000,0.500"
execute as @e[type=marker,tag=gamemode.payload.path] at @s run function dev:gamemode/payload/visualize_path


# Pig Pathing :D
execute as @e[type=pig,tag=payload_test] at @s run tp @s ^ ^ ^0.1 facing entity @n[type=marker,tag=active_payload_path]
execute as @e[type=pig,tag=payload_test] at @s if score @s payload = @n[type=marker,tag=active_payload_path,distance=..0.1] payload run scoreboard players add @s payload 1
tag @e[type=marker,tag=active_payload_path] remove active_payload_path
execute as @e[type=marker,tag=gamemode.payload.path] if score @s payload = @n[type=pig,tag=payload_test] payload run tag @s add active_payload_path
#execute if entity @n[type=pig,tag=distance.run] unless entity @n[type=marker,tag=active_payload_path] run tellraw @a "Payload Distances Calculated!"
execute unless entity @n[type=marker,tag=active_payload_path] run kill @n[type=pig,tag=payload_test]
execute unless entity @n[type=pig,tag=payload_test] at @n[type=marker,tag=gamemode.payload.start,scores={payload=0}] run function dev:gamemode/payload/restart_path

# Adds to the active path timer
#execute if entity @n[type=pig,tag=distance.run] run scoreboard players add @e[type=marker,tag=payload_path,tag=active_payload_path] payload.distance 1