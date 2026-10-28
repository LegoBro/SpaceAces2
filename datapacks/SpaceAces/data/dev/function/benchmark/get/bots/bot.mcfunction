# Show a single bot

tellraw @s [{nbt:"bots[0].id",storage:"dev:game_queue_data"},"-",{nbt:"bots[0].name",storage:"dev:game_queue_data"},":",{nbt:"bots[0].class_history",storage:"dev:game_queue_data"}]

tellraw @s [{"text":"   s-"},{nbt:"bots[0].skill",storage:"dev:game_queue_data"},{"text":", a-"},{nbt:"bots[0].aggression",storage:"dev:game_queue_data"},{"text":", c-"},{nbt:"bots[0].cooperativeness",storage:"dev:game_queue_data"}]

# Update scoreboards for group
execute store result score #bot.skill Numbers run data get storage dev:game_queue_data bots[0].skill
scoreboard players add #bot Numbers 1
scoreboard players operation #bot.average_skill Numbers += #bot.skill Numbers

# Remove data
data remove storage dev:game_queue_data bots[0]

# Next bot
execute if data storage dev:game_queue_data bots[0] run function dev:benchmark/get/bots/bot