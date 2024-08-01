## Tallies up points for high scores

scoreboard players set escape.time Numbers 30000
scoreboard players operation escape.time Numbers -= time Numbers
execute if score escape.time Numbers matches ..-1 run scoreboard players set escape.time 0
scoreboard players set escape.kills Numbers 0
scoreboard players set escape.heals Numbers 0
scoreboard players set escape.damage Numbers 0
scoreboard players set escape.points Numbers 0

execute as @a[tag=escape] run scoreboard players operation escape.kills Numbers += @s game_kills
execute as @a[tag=escape] run scoreboard players operation escape.heals Numbers += @s game_healing
execute as @a[tag=escape] run scoreboard players operation escape.damage Numbers += @s game_dmg_take

function gamemode:escape/points/big_time
