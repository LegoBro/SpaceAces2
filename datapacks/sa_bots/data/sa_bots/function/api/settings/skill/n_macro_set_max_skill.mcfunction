#make sure we end up in range 1-10
$scoreboard players set #max sab.var $(n)
execute if score #max sab.var matches ..0 run scoreboard players set #max sab.var 1
execute if score #max sab.var matches 11.. run scoreboard players set #max sab.var 10
execute store result storage sa_bots:bot_data bot_template.settings.brain.skill.max int 1 run scoreboard players get #max sab.var

#make sure min is <= max (and preserve the max we just defined)
execute store result score #min sab.var run data get storage sa_bots:bot_data bot_template.settings.brain.skill.min
execute unless score #min sab.var <= #max sab.var run \
    data modify storage sa_bots:bot_data bot_template.settings.brain.skill.min set from storage sa_bots:bot_data bot_template.settings.brain.skill.max


#now apply to all active bots
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.brain.skill set from storage sa_bots:bot_data bot_template.settings.brain.skill
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.brain.locked_in set value 0