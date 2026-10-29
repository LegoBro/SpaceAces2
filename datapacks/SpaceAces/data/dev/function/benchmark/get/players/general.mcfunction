

# Print Blue Players
tellraw @s [{translate:"dev.benchmark.get.players.general",color:"gray"}]

data modify storage dev:game_queue_data players set from storage game_history:games games[0].players.general
function dev:benchmark/get/players/player
