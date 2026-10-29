# 
execute if data storage game_history:games games[0].bots.blue run function dev:benchmark/get/bots/blue
execute if data storage game_history:games games[0].bots.red run function dev:benchmark/get/bots/red
execute if data storage game_history:games games[0].bots.general run function dev:benchmark/get/bots/general