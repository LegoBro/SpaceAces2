# Game queue is active
execute unless data storage dev:game_queue games[0] run return run tellraw @a {text:"Game Queue Ended"}
schedule function dev:benchmark/running 1s

execute if function gamemode:test/is_gamemode_running run return 0

tellraw @a {text:"Game Concluded"}
data modify storage dev:game_queue ran_games append from storage dev:game_queue games[0]


## Pop game after moving it
data remove storage dev:game_queue games[0]

# Go ahead and launch next game, if it exists
function dev:benchmark/game_queue/next_game