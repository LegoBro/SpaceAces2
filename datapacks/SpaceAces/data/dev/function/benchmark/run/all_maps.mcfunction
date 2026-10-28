## Runs a game on all maps for the current mode

function dev:benchmark/game_queue/empty

execute store result score add_games benchmark run data get storage space_aces:selected_gamemode gamemode.maps

function dev:benchmark/game_queue/add_maps_loop

function dev:benchmark/game_queue/next_game
schedule function dev:benchmark/running 10s