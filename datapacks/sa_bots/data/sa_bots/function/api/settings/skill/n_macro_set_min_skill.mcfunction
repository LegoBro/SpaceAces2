#make sure we end up in range 1-10
$scoreboard players set #min sab.var $(n)
execute if score #min sab.var matches ..0 run scoreboard players set #min sab.var 1
execute if score #min sab.var matches 11.. run scoreboard players set #min sab.var 10
execute store result storage sa_bots:bot_data bot_template.settings.brain.skill.min int 1 run scoreboard players get #min sab.var

#make sure min is <= max (and preserve the min we just defined)
execute store result score #max sab.var run data get storage sa_bots:bot_data bot_template.settings.brain.skill.max
execute unless score #min sab.var <= #max sab.var run \
    data modify storage sa_bots:bot_data bot_template.settings.brain.skill.max set from storage sa_bots:bot_data bot_template.settings.brain.skill.min


#now apply to all active bots
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.brain.skill set from storage sa_bots:bot_data bot_template.settings.brain.skill
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.brain.locked_in set value 0