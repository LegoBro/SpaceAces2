#make sure we end up in range 1-10
$scoreboard players set #var sab.var $(n)
execute if score #var sab.var matches ..0 run scoreboard players set #var sab.var 1
execute if score #var sab.var matches 11.. run scoreboard players set #var sab.var 10
execute store result storage sa_bots:bot_data bot_template.settings.brain.skill.min int 1 run scoreboard players get #var sab.var
execute store result storage sa_bots:bot_data bot_template.settings.brain.skill.max int 1 run scoreboard players get #var sab.var
execute store result storage sa_bots:bot_data bot_template.settings.brain.skill.actual int 1 run scoreboard players get #var sab.var


#now apply to all active bots
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.brain.skill set from storage sa_bots:bot_data bot_template.settings.brain.skill
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.brain.locked_in set value 0