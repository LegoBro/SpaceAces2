## End data:


execute store result storage dev:helper total_distance int 1 run scoreboard players get gamemode.payload.total_distance Numbers
data modify storage game_history:current game.gamemode.payload.total_distance append from storage dev:helper total_distance

execute store result storage dev:helper distance int 1 run scoreboard players get gamemode.payload.distance Numbers
data modify storage game_history:current game.gamemode.payload.distance append from storage dev:helper distance

execute store result storage dev:helper timer int 1 run scoreboard players get timer Numbers
data modify storage game_history:current game.gamemode.payload.time_left append from storage dev:helper timer