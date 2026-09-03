#executed by anything

#"storage sa_bots:bot_data this" must be mapped to a bot


#skill
execute store result score #min sab.var run data get storage sa_bots:bot_data this.settings.brain.skill.min
execute store result score #max sab.var run data get storage sa_bots:bot_data this.settings.brain.skill.max
execute if score #min sab.var < #max sab.var run function sa_bots:bot/utility/pick_random_number_min_max
execute if score #min sab.var < #max sab.var store result storage sa_bots:bot_data this.settings.brain.skill.actual int 1 run scoreboard players get #random sab.var

#aggression
execute store result score #min sab.var run data get storage sa_bots:bot_data this.settings.brain.aggression.min
execute store result score #max sab.var run data get storage sa_bots:bot_data this.settings.brain.aggression.max
execute if score #min sab.var < #max sab.var run function sa_bots:bot/utility/pick_random_number_min_max
execute if score #min sab.var < #max sab.var store result storage sa_bots:bot_data this.settings.brain.aggression.actual int 1 run scoreboard players get #random sab.var

#cooperativeness
execute store result score #min sab.var run data get storage sa_bots:bot_data this.settings.brain.cooperativeness.min
execute store result score #max sab.var run data get storage sa_bots:bot_data this.settings.brain.cooperativeness.max
execute if score #min sab.var < #max sab.var run function sa_bots:bot/utility/pick_random_number_min_max
execute if score #min sab.var < #max sab.var store result storage sa_bots:bot_data this.settings.brain.cooperativeness.actual int 1 run scoreboard players get #random sab.var

#okay, we're locked in. no need to re-evaluate this unless we modify the bot's brain and set locked_in back to 0
data modify storage sa_bots:bot_data this.settings.brain.locked_in set value 1


#this warrants an update
data modify storage sa_bots:bot_data this.updateOrigin set value 1