scoreboard players operation Mission display = Mission Numbers
scoreboard players operation Mission display /= 20 Numbers
scoreboard players remove Mission Numbers 1

# Forceload the arena before the game starts
execute if score Mission Numbers matches 50 run forceload remove all
execute if score Mission Numbers matches 50 run function arena:prepare with storage space_aces:gamemodes map

execute if score Mission Numbers matches 0 unless score Gamemode settings matches 5 if entity @p[tag=awaiting,team=blue] if entity @p[tag=awaiting,team=red] run function arena:load
execute if score Mission Numbers matches 0 unless score Gamemode settings matches 5 unless entity @p[tag=awaiting,team=blue] run function gamemode:nep
execute if score Mission Numbers matches 0 unless score Gamemode settings matches 5 if entity @p[tag=awaiting,team=blue] unless entity @p[tag=awaiting,team=red] run function gamemode:nep
execute if entity @a[tag=awaiting,tag=!ready] run function gamemode:abort_game
execute unless entity @a[tag=awaiting] run function gamemode:abort_game
execute if score Mission Numbers matches 0 if score Gamemode settings matches 5 run function gamemode:escape/load
execute if score Gamemode settings matches 5 if entity @a[tag=awaiting,team=red] run function gamemode:wrong_team_abort

return 1