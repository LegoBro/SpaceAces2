execute unless entity @e[type=marker,tag=blue_spawn_point,scores={gamemode.spawnpoint.progress=1}] run return fail

scoreboard players remove @e[type=marker,tag=blue_spawn_point] gamemode.spawnpoint.progress 1
