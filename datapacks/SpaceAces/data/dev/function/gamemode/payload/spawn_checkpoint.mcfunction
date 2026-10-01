# Changes a path to be a checkpoint
## No previous?  Assumes starting point.
execute as @n[tag=gamemode.payload.path] at @s run function dev:gamemode/payload/checkpoint

kill @s