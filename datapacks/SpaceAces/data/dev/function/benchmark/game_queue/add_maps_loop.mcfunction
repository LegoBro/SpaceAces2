# adds (x) number of gamemodes
scoreboard players remove add_games benchmark 1

function dev:benchmark/game_queue/add_next_map

execute if score add_games benchmark matches 1.. run function dev:benchmark/game_queue/add_maps_loop