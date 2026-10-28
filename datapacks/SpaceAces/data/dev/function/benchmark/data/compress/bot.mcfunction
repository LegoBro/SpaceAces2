# Compresses bot data
data remove storage dev:game_queue_data bot

data modify storage dev:game_queue_data bot.name set from storage dev:game_queue_data old_bots[0].profile.username
data modify storage dev:game_queue_data bot.id set from storage dev:game_queue_data old_bots[0].profile.id

# Brain
data modify storage dev:game_queue_data bot.skill set from storage dev:game_queue_data old_bots[0].settings.brain.skill.actual
data modify storage dev:game_queue_data bot.aggression set from storage dev:game_queue_data old_bots[0].settings.brain.aggression.actual
data modify storage dev:game_queue_data bot.cooperativeness set from storage dev:game_queue_data old_bots[0].settings.brain.cooperativeness.actual

data modify storage dev:game_queue_data bot.class_history set from storage dev:game_queue_data old_bots[0].class_history
data modify storage dev:game_queue_data bot.team set from storage dev:game_queue_data old_bots[0].team



# Add bot back to new bots array
execute store result score #bot_team Numbers run data get storage dev:game_queue_data bot.team

execute if score #bot_team Numbers matches 1 run data modify storage dev:game_queue_data new_bots.blue append from storage dev:game_queue_data bot
execute if score #bot_team Numbers matches 2 run data modify storage dev:game_queue_data new_bots.red append from storage dev:game_queue_data bot

execute unless score #bot_team Numbers matches 1..2 run data modify storage dev:game_queue_data new_bots.general append from storage dev:game_queue_data bot


# Remove data
data remove storage dev:game_queue_data old_bots[0]
# Next bot
execute if data storage dev:game_queue_data old_bots[0] run function dev:benchmark/data/compress/bot