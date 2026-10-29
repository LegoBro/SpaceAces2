

# Print Blue Players
tellraw @s [{translate:"dev.benchmark.get.players.blue",color:"blue"}]

data modify storage dev:game_queue_data players set from storage game_history:games games[0].players.blue
function dev:benchmark/get/players/player
