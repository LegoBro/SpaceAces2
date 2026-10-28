## Runs a game on all gamemodes to verify that they are working

function dev:benchmark/game_queue/empty

execute store result score add_games benchmark run data get storage space_aces:gamemodes gamemodes

function dev:benchmark/game_queue/add_gamemode_loop

function dev:benchmark/game_queue/next_game
schedule function dev:benchmark/running 10s