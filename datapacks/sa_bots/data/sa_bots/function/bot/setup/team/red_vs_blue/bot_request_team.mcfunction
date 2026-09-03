#returns 1 if we want blue team
#returns 2 if we want red team
#returns 3 if we want a random team

#"storage sa_bots:bot_data this" must be mapped to a bot

#"function sa_bots:bot/utility/count_players_and_bots_on_red_and_blue" should be run prior to this



#desired_team is first priority if we have that defined
#red
execute if data storage sa_bots:bot_data this.settings.team_choice{desired_team:1} run \
    return 1
#=====
#blue
execute if data storage sa_bots:bot_data this.settings.team_choice{desired_team:2} run \
    return 2
#=====



#otherwise, pick based on selection_logic
# team_choice.selection_logic
#   0 -- pick a team entirely at random
#   1 -- pick the team with less players 
#   2 -- pick the team with less bots

#pure random
execute if data storage sa_bots:bot_data this.settings.team_choice{selection_logic:0} run \
    return 3
#=====



#team with less players
#blue
execute if data storage sa_bots:bot_data this.settings.team_choice{selection_logic:1} \
    if score #count_blue sab.var < #count_red sab.var run \
    return 1
#=====
#red
execute if data storage sa_bots:bot_data this.settings.team_choice{selection_logic:1} \
    if score #count_red sab.var < #count_blue sab.var run \
    return 2
#=====
#still here? pick randomly
execute if data storage sa_bots:bot_data this.settings.team_choice{selection_logic:1} run \
    return 3
#=====



#team with less bots
#blue
execute if data storage sa_bots:bot_data this.settings.team_choice{selection_logic:2} \
    if score #count_blue_bot sab.var < #count_red_bot sab.var run \
    return 1
#=====
#red
execute if data storage sa_bots:bot_data this.settings.team_choice{selection_logic:2} \
    if score #count_red_bot sab.var < #count_blue_bot sab.var run \
    return 2
#=====
#still here? pick randomly
return 3