execute if data storage sa_bots:bot_data bots[0] run \
    data modify storage sa_bots:bot_data bots[].settings.team_choice.allow_team_change set value 0
data modify storage sa_bots:bot_data bot_template.settings.team_choice.allow_team_change set value 0