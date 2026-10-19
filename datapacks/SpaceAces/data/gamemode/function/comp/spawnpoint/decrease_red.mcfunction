execute unless entity @e[type=marker,tag=red_spawn_point,scores={gamemode.spawnpoint.progress=-1}] run return fail

scoreboard players add @e[type=marker,tag=red_spawn_point] gamemode.spawnpoint.progress 1
