# 
execute if data storage game_history:games games[0].players.blue run function dev:benchmark/get/players/blue
execute if data storage game_history:games games[0].players.red run function dev:benchmark/get/players/red
execute if data storage game_history:games games[0].players.general run function dev:benchmark/get/players/general