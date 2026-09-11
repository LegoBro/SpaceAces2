#set bot_template
data modify storage sa_bots:bot_data bot_template.settings.class_choice.selection_logic set value 2

#apply to existing bots
execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.class_choice.selection_logic set value 2