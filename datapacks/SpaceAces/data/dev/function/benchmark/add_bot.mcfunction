## Adds bot to the data stored in games[0]
execute store result storage dev:bot_brain id int 1 run scoreboard players get @s sab.botID

execute if score @s Team matches 1 run return run function dev:benchmark/bot/macro_blue with storage dev:bot_brain
execute if score @s Team matches 2 run return run function dev:benchmark/bot/macro_red with storage dev:bot_brain

return run function dev:benchmark/bot/macro_general with storage dev:bot_brain
