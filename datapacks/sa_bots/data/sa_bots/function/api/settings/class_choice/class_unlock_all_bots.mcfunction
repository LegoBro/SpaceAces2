execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.class_choice.allow_class_change set value 1
data modify storage sa_bots:bot_data bot_template.settings.class_choice.allow_class_change set value 1