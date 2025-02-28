## Commands ran for payload

# Payload, blue is always pushing
execute at @n[type=marker,tag=payload] as @p[team=blue,distance=..3] unless entity @a[team=red,distance=..3] as @n[type=pig,tag=payload] at @s run tp @s ^ ^ ^0.1 facing entity @n[type=marker,tag=active_payload_path]

execute as @e[type=pig,tag=payload] at @s if score @s payload = @n[type=marker,tag=active_payload_path,tag=payload_checkpoint,distance=..0.1] payload run function gamemode:payload/next_checkpoint
execute as @e[type=pig,tag=payload] at @s if score @s payload = @n[type=marker,tag=active_payload_path,distance=..0.1] payload run scoreboard players add @s payload 1
tag @e[type=marker,tag=active_payload_path] remove active_payload_path
execute as @e[type=marker,tag=payload_path] if score @s payload = @n[type=pig,tag=payload] payload run tag @s add active_payload_path
execute unless entity @n[type=marker,tag=active_payload_path] run function gamemode:blue_win

# Respawning
tp @a[tag=in_game,scores={health=..0},team=blue] 6 195 -1 90 0
tp @a[tag=in_game,scores={health=..0},team=red] 10 195 -1 -90 0
scoreboard players add @a[tag=in_game,scores={health=..0}] i 1
execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:respawn
execute as @a[tag=in_game] unless score @s i > respawnTime Numbers run item replace entity @s hotbar.8 with minecraft:air
execute as @a[tag=in_game,scores={i=1..}] at @s run function gamemode:payload/respawning

execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10