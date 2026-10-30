

execute store result storage dev:helper point_capture int 1 run scoreboard players get activePoint Numbers

data modify storage game_history:current game.gamemode.setback.point_captures append from storage dev:helper point_capture