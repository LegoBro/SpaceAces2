# Show a single bot

tellraw @s [{nbt:"players[0].name",storage:"dev:game_queue_data"},":",{nbt:"players[0].class",storage:"dev:game_queue_data"}]


# Remove data
data remove storage dev:game_queue_data players[0]

# Next bot
execute if data storage dev:game_queue_data players[0] run function dev:benchmark/get/players/player