# Store players into data
data remove storage dev:helper players
execute as @a[tag=in_game] run function dev:benchmark/data/compress/player
data modify storage game_history:current game.players set from storage dev:helper players
